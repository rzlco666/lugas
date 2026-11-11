# Roadmap

Where Lugas is going. Items are marked **next** (planned, being worked on), **later** (planned, not started), or **idea** (not decided — tell us if you want it). No dates are promised; order can change based on what contributors and users ask for.

## v1.1.0 — next

The polish release — this round of work.

- [x] Logo and brand assets (`assets/logo.svg`, `assets/banner.png`, `assets/social-preview.png`)
- [x] README rewrite: hero, worked demo with RASA scores, star history, contributors
- [x] CI validation workflow (skill frontmatter, VERSION files, doc links, install commands)
- [x] Issue and PR templates
- [x] Skill content upgrades: more rewrite examples, more word swaps, more templates
- [ ] Release v1.1.0 on GitHub (tag + release notes) once CI is green

## v1.2.0 — later

More content, same two skills.

- [ ] 20+ new rewrite examples per skill, covering health, finance, legal, and education
- [ ] Templates for legal and finance text (notices, disclaimers, fee explanations)
- [ ] Example translations: the same passage rewritten in both languages, side by side
- [ ] A short video demo (60 seconds: stiff text in, plain text out, with RASA scores)
- [ ] Translations of the install guide (Bahasa Indonesia first)

## v2.0.0 — ideas

Bigger leaps. None of these are decided — open an issue if one matters to you.

- [ ] A third skill, e.g. plain language for a specific domain (legal, medical, or government)
- [ ] An interactive RASA scorer: paste text, get per-dimension scores and a rewrite
- [ ] More languages, starting with the ones contributors actually speak
- [ ] A shared glossary of bureaucratic phrases and their plain replacements, as a data file other tools can reuse

## Non-goals

Things Lugas will probably never do, so nobody waits for them:

- Prescribe a house style, brand voice, colors, or fonts — Lugas is a filter, not a style guide.
- Rewrite code — the skills cover human-facing text, not source code.
- Auto-update installed skills on your machine — updates are always your choice.
