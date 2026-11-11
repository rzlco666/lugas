# Lugas — Install Guide

Full walkthrough for every supported agent, from zero to a working skill. For the one-command summary, see [README.md](README.md).

## What gets installed

Two skill folders:

| Folder | Skill |
|---|---|
| `skills/bahasa-indonesia-plain/` | Plain Bahasa Indonesia |
| `skills/english-plain/` | Plain English |

Each folder contains a `SKILL.md` the agent reads. Installers copy these folders into the location your agent looks for skills.

## Where each agent reads skills

| Agent | Global skills folder | Project skills folder |
|---|---|---|
| Claude Code | `~/.claude/skills/` | `<project>/.claude/skills/` |
| Codex | `~/.codex/skills/` | `<project>/.codex/skills/` |
| Cursor | `~/.cursor/skills/` | `<project>/.cursor/skills/` |
| Cline | `~/.cline/skills/` | `<project>/.cline/skills/` |
| Kimi Code | `~/.kimi/skills/` | `<project>/.kimi/skills/` |
| Oh My Pi / Pi | `~/.omp/skills/` | `<project>/.omp/skills/` |

**Global scope** (default): the skill is available in every project and every session.
**Project scope** (`--project`): the skill lives inside one project folder, so it travels with the repo and works for anyone who clones it.

## Route 1 — skills.sh (recommended)

Works for any agent that supports the `skills.sh` format.

```bash
npx skills add rzlco666/lugas
```

To install only one skill, check `npx skills --help` for the skill-selection flag, or use the installer script below with `--skills`.

**Update:** re-run the same command.
**Removal:** delete the installed skill folders (see [Removal](#removal)), or use your agent's skill manager if it has one.

## Route 2 — installer script

```bash
curl -fsSL https://raw.githubusercontent.com/rzlco666/lugas/main/install.sh | bash
```

Or clone and run locally:

```bash
git clone https://github.com/rzlco666/lugas.git
cd lugas
./install.sh
```

### Options

| Flag | Effect |
|---|---|
| `--skills id` | Install only `bahasa-indonesia-plain` |
| `--skills en` | Install only `english-plain` |
| `--skills all` | Install both (default) |
| `--global` | Install to your home agent folders (default) |
| `--project` | Install to `./.claude/skills` and `./.codex/skills` in the current directory |
| `--list` | Show where the skills are currently installed |
| `--help` | Show usage |

Examples:

```bash
./install.sh --skills id --global
./install.sh --skills en --project
./install.sh --list
```

### How it works

1. If the `skills/` folders sit next to `install.sh` (a local clone), it copies them directly.
2. Otherwise it downloads them: first it tries a sparse `git clone` of the repo, and if git is unavailable it downloads each `SKILL.md` with `curl` from the raw GitHub URL.
3. It installs into every detected agent home — Claude (`~/.claude/skills`), Codex (`~/.codex/skills`), Cursor (`~/.cursor/skills`), Cline (`~/.cline/skills`), Kimi (`~/.kimi/skills`), Oh My Pi (`~/.omp/skills`). An agent home counts as detected when its folder already exists; the installer creates the `skills` subfolder inside it but never creates a new agent home from scratch.
4. It prints exactly where each skill landed. Restart your agent session afterwards so it picks up the new skill.

**Update:** re-run the installer; it overwrites the old skill folders.
**Requirements:** `bash`, plus `git` or `curl`, and standard coreutils. No other dependencies.

## Route 3 — Claude Code plugin

```text
/plugin marketplace add https://github.com/rzlco666/lugas
/plugin install lugas@lugas
```

The plugin manifest lives at `.claude-plugin/marketplace.json` in this repo. Restart Claude Code after installing.

**Update:** `/plugin update lugas@lugas` (or remove and reinstall).
**Removal:** `/plugin uninstall lugas@lugas`, then remove the marketplace if nothing else uses it: `/plugin marketplace remove https://github.com/rzlco666/lugas`.

## Route 4 — Codex plugin

```bash
codex plugin marketplace add rzlco666/lugas
codex plugin add lugas@lugas
```

**Update / removal:** use `codex plugin update` / `codex plugin remove` with the same plugin name, or fall back to the installer script (Route 2) for plain skill folders.

## Route 5 — Cursor

```bash
agent plugin marketplace add https://github.com/rzlco666/lugas
```

Then enable `lugas` in Cursor's plugin/agent settings and restart Cursor.

**Update / removal:** re-run the marketplace command to update; remove the plugin from Cursor's settings to uninstall. The installer script (Route 2) also works for plain skill folders under `~/.cursor/skills`.

## Route 6 — Cline

```bash
cline plugin install https://github.com/rzlco666/lugas.git
```

**Update / removal:** use Cline's plugin manager, or the installer script (Route 2), which installs to `~/.cline/skills`.

## Route 7 — Kimi Code

```text
/plugins install https://github.com/rzlco666/lugas
```

**Update / removal:** use Kimi Code's plugin manager, or the installer script (Route 2), which installs to `~/.kimi/skills`.

## Route 8 — Oh My Pi

```bash
omp plugin marketplace add rzlco666/lugas
omp plugin install lugas@lugas
```

**Update / removal:** use `omp plugin update` / `omp plugin remove`, or the installer script (Route 2), which installs to `~/.omp/skills`.

## Route 9 — Pi package

```bash
pi install git:github.com/rzlco666/lugas
```

**Update / removal:** use `pi`'s package commands for this package, or the installer script (Route 2).

## Route 10 — Single files (no install)

If your agent lets you point at a single skill file, or you just want to read one:

```bash
curl -o plain-id.md https://raw.githubusercontent.com/rzlco666/lugas/main/plain-id.md
curl -o plain-en.md https://raw.githubusercontent.com/rzlco666/lugas/main/plain-en.md
```

> Note: `plain-id.md` and `plain-en.md` are standalone single-file copies of the two skills. They will be added at the repo root shortly after the skills land.

## Removal

```bash
./uninstall.sh        # asks for confirmation first
./uninstall.sh --yes  # no prompt
```

`uninstall.sh` removes the skill folders from every location the installer uses (global agent homes and, when run inside a project, the project folders). Plugin installs should also be removed from the agent's plugin manager.

## Troubleshooting

**Skill not loading / agent doesn't know the skill**
Restart the agent session (or the whole app). Skills are usually discovered at session start; a running session will not see a newly installed skill. Then check the skill is where the agent looks — run `./install.sh --list` to see the installed locations, and compare with the table at the top of this guide.

**Plugin marketplace errors**
- `marketplace add` failing: check the URL is exactly `https://github.com/rzlco666/lugas` and that the repo is public and reachable (`curl -I https://github.com/rzlco666/lugas` should return 200).
- `plugin install` failing after a successful marketplace add: restart the agent, then retry the install command. If it still fails, fall back to the installer script (Route 2), which does not need the plugin system at all.
- Stale plugin after an update: remove the plugin completely, restart, then install again.

**Installer: "git not found" / "curl not found"**
The installer needs at least one of `git` or `curl`. Install one of them and re-run. If you already have a local clone, neither is needed — the script copies from the folders next to it.

**Installer: "no agent homes detected"**
The installer only writes into agent homes that already exist (it will not invent a `~/.claude` folder for an agent you never installed). If you expected an install somewhere, make sure that agent has run at least once so its home folder exists, then re-run the installer.

**Permission errors**
Do not run the installer with `sudo` — it installs into your own home directory. If a skills folder is owned by root from an earlier sudo run, fix ownership first (`sudo chown -R "$USER" ~/.claude/skills` etc.) and re-run without sudo.

**I only want one skill**
Use `./install.sh --skills id` or `--skills en`, or download the single file for that skill (Route 10).
