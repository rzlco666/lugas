#!/usr/bin/env bash
# Lugas installer — installs plain-language agent skills.
# Usage: ./install.sh [--skills id|en|all] [--global|--project] [--list] [--help]
set -euo pipefail

REPO="rzlco666/lugas"
RAW="https://raw.githubusercontent.com/${REPO}/main"
SKILLS=("bahasa-indonesia-plain" "english-plain")
WANT="all"
SCOPE="global"

# agent home -> skills subdir (global scope)
declare -A AGENT_HOMES=(
  [claude]="$HOME/.claude/skills"
  [codex]="$HOME/.codex/skills"
  [cursor]="$HOME/.cursor/skills"
  [cline]="$HOME/.cline/skills"
  [kimi]="$HOME/.kimi/skills"
  [omp]="$HOME/.omp/skills"
)

usage() {
  cat <<EOF
Usage: install.sh [OPTIONS]

Install Lugas skills (bahasa-indonesia-plain, english-plain).

Options:
  --skills id|en|all   Which skills to install (default: all)
  --global             Install to agent homes under \$HOME (default)
  --project            Install to ./.claude/skills and ./.codex/skills
  --list               Show where the skills are currently installed
  --help               Show this help
EOF
}

selected_skills() {
  case "$WANT" in
    id)  echo "bahasa-indonesia-plain" ;;
    en)  echo "english-plain" ;;
    all) printf '%s\n' "${SKILLS[@]}" ;;
  esac
}

installed_locations() {
  local skill dir found=0
  for skill in $(selected_skills); do
    for dir in "${AGENT_HOMES[@]}" "./.claude/skills" "./.codex/skills"; do
      if [ -d "$dir/$skill" ]; then
        echo "$skill -> $dir/$skill"
        found=1
      fi
    done
  done
  [ "$found" -eq 1 ] || echo "No Lugas skills installed."
}

# Fetch the skill folders into a temp dir. Uses the local clone when run
# from the repo, else sparse git clone, else plain curl of SKILL.md files.
fetch_skills() {
  local dest="$1"
  mkdir -p "$dest"
  if [ -d "skills/bahasa-indonesia-plain" ] && [ -d "skills/english-plain" ]; then
    cp -r skills/* "$dest/"
    return 0
  fi
  local tmp fetched=0
  tmp="$(mktemp -d)"
  if command -v git >/dev/null 2>&1; then
    if git clone --depth 1 --filter=blob:none --sparse \
        "https://github.com/${REPO}.git" "$tmp/repo" >/dev/null 2>&1 \
       && (cd "$tmp/repo" && git sparse-checkout set skills >/dev/null 2>&1) \
       && [ -d "$tmp/repo/skills/bahasa-indonesia-plain" ]; then
      cp -r "$tmp/repo/skills/." "$dest/"
      fetched=1
    fi
  fi
  if [ "$fetched" -eq 0 ] && command -v curl >/dev/null 2>&1; then
    local skill ok=1
    for skill in "${SKILLS[@]}"; do
      mkdir -p "$dest/$skill"
      curl -fsSL "${RAW}/skills/${skill}/SKILL.md" -o "$dest/$skill/SKILL.md" || ok=0
    done
    [ "$ok" -eq 1 ] && fetched=1
  fi
  rm -rf "$tmp"
  if [ "$fetched" -eq 0 ]; then
    echo "Error: could not download the skills (need git or curl, and the repo must exist)." >&2
    exit 1
  fi
}

install_into() {
  local src="$1" target="$2" skill
  for skill in $(selected_skills); do
    [ -d "$src/$skill" ] || { echo "Warning: $skill not found in source, skipping." >&2; continue; }
    mkdir -p "$target"
    rm -rf "$target/$skill"
    cp -r "$src/$skill" "$target/$skill"
    echo "Installed $skill -> $target/$skill"
  done
}

main() {
  while [ $# -gt 0 ]; do
    case "$1" in
      --skills)  WANT="$2"; shift 2 ;;
      --global)  SCOPE="global"; shift ;;
      --project) SCOPE="project"; shift ;;
      --list)    installed_locations; exit 0 ;;
      --help|-h) usage; exit 0 ;;
      *) echo "Unknown option: $1" >&2; usage >&2; exit 1 ;;
    esac
  done
  case "$WANT" in id|en|all) ;; *) echo "Invalid --skills value: $WANT" >&2; exit 1 ;; esac

  local src
  src="$(mktemp -d)"
  trap "rm -rf '$src'" EXIT
  fetch_skills "$src"

  if [ "$SCOPE" = "project" ]; then
    install_into "$src" "./.claude/skills"
    install_into "$src" "./.codex/skills"
  else
    local found=0 home
    for home in "${AGENT_HOMES[@]}"; do
      if [ -d "$(dirname "$home")" ]; then
        install_into "$src" "$home"
        found=1
      fi
    done
    if [ "$found" -eq 0 ]; then
      echo "No agent homes detected (looked for ~/.claude, ~/.codex, ~/.cursor," >&2
      echo "~/.cline, ~/.kimi, ~/.omp). Run one of those agents once, then re-run." >&2
      exit 1
    fi
  fi
  echo "Done. Restart your agent session so it picks up the new skill(s)."
}

main "$@"
