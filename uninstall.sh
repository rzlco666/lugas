#!/usr/bin/env bash
# Lugas uninstaller — removes installed skill folders.
# Usage: ./uninstall.sh [--yes]
set -euo pipefail

SKILLS=("bahasa-indonesia-plain" "english-plain")
DIRS=(
  "$HOME/.claude/skills"
  "$HOME/.codex/skills"
  "$HOME/.cursor/skills"
  "$HOME/.cline/skills"
  "$HOME/.kimi/skills"
  "$HOME/.omp/skills"
  "./.claude/skills"
  "./.codex/skills"
)
YES=0

usage() {
  cat <<EOF
Usage: uninstall.sh [OPTIONS]

Remove Lugas skill folders installed by install.sh.

Options:
  --yes    Remove without asking for confirmation
  --help   Show this help
EOF
}

found_targets() {
  local dir skill
  for dir in "${DIRS[@]}"; do
    for skill in "${SKILLS[@]}"; do
      [ -d "$dir/$skill" ] && echo "$dir/$skill"
    done
  done
}

main() {
  while [ $# -gt 0 ]; do
    case "$1" in
      --yes) YES=1; shift ;;
      --help|-h) usage; exit 0 ;;
      *) echo "Unknown option: $1" >&2; usage >&2; exit 1 ;;
    esac
  done

  local targets
  targets="$(found_targets)" || true
  if [ -z "$targets" ]; then
    echo "Nothing to remove: no Lugas skills found."
    exit 0
  fi

  echo "Will remove:"
  echo "$targets"
  if [ "$YES" -eq 0 ]; then
    printf 'Remove these folders? [y/N] '
    read -r answer
    case "$answer" in
      y|Y|yes|YES) ;;
      *) echo "Aborted."; exit 0 ;;
    esac
  fi

  echo "$targets" | while read -r path; do
    rm -rf "$path"
    echo "Removed $path"
  done
  echo "Done. Restart your agent session to clear the skill from memory."
}

main "$@"
