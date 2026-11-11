# Security Policy

## What this repo contains

Lugas is documentation and installer scripts: skill definitions (`SKILL.md` files), install/uninstall shell scripts, and plugin manifests. It contains no server code, no network service, and no user data.

## Rules for the repo

- **No credentials in the repo.** No API keys, tokens, passwords, or private URLs — in code, docs, examples, or commit history. Example text must never contain real credentials, even as placeholders that look real.
- **No security-sensitive content in the skills.** Skill files must not instruct an agent to exfiltrate data, bypass permissions, or run commands outside the user's request.
- **Installer scripts stay minimal.** `install.sh` and `uninstall.sh` only copy skill folders, download from this repo's own GitHub raw URLs, and print what they did. They never execute downloaded code beyond copying files, never touch anything outside skill folders, and never ask for elevated privileges.

## Reporting a vulnerability

If you find a security issue — for example, the installer doing something unexpected, or a skill prompt that could be abused — please report it.

- **Preferred:** use GitHub's private vulnerability reporting on this repo (Security tab → Report a vulnerability), so the details stay private until fixed.
- **Alternative:** open a GitHub issue. Avoid including exploit details in a public issue; describe the impact and offer to share details privately.

We will acknowledge the report, fix it, and credit you in the fix (unless you prefer to stay anonymous).

## Supported versions

Only the latest release on `main` is supported. Older versions are not patched — update to the latest.
