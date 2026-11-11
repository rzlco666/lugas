# Changelog

All notable changes to Lugas are documented here. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] — 2026-11-11

### Added

- Logo and brand assets: `assets/logo.svg` (symbol, mono, reversed, stacked), favicon and app-icon set, `assets/banner.png`, `assets/social-preview.png`, `docs/BRAND.md`
- Skill content upgrades in both skills: 60-second quick start, a full worked RASA audit with before/after scores, 8 common mistakes, a decision tree, a 20-row bilingual glossary, and 4 new rewrite pairs per skill
- README rewrite: hero banner, worked rewrite demo with before/after RASA scores, star history chart, contributors section, expanded FAQ
- CI validation workflow (`.github/workflows/validate.yml`): checks skill frontmatter, VERSION files, relative doc links, and install commands
- Issue templates (bug report, feature request, new example) and a pull request template
- ROADMAP.md and CHANGELOG.md
- "Try it in 60 seconds" section in GUIDE.md

### Changed

- GUIDE.md troubleshooting extended: wrong-skill answers, install.sh flags, skills.sh listing, dropped facts
- CONTRIBUTING.md extended: logo/asset rules, local validation checks, code of conduct, good-first-issue ideas

## [1.0.0] — 2026-11-11

### Added

- Initial public release
- Skill `bahasa-indonesia-plain`: plain Bahasa Indonesia with the RASA framework (Ritmis, Akurat, Sarat Makna, Alami), scored rubric, word-swap table, templates, and a rewrite library
- Skill `english-plain`: plain English with the RASA framework (Rhythmic, Accurate, Substantive, Authentic), scored rubric, word-swap table, templates, and a rewrite library
- Single-file copies `plain-id.md` and `plain-en.md` for paste-into-any-chat use
- Rewrite examples in `examples/` for both languages
- `install.sh` and `uninstall.sh` (global and project scope, per-skill selection)
- Plugin manifests for Claude Code, Codex, Cursor, Cline, Kimi Code, and Oh My Pi, plus the Pi package route
- README.md, GUIDE.md, CONTRIBUTING.md, LICENSE (MIT), SECURITY.md
