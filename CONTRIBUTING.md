# Contributing to Lugas

Thanks for wanting to make plain language better. Contributions are welcome — new rewrite examples, sharper rules, fixes, translations of the guide, and improvements to the brand assets.

## How to contribute

1. **Open an issue first** for anything bigger than a typo, so we can agree on the direction before you write a lot.
2. Fork the repo, create a branch (`git checkout -b add-example-id-12`), make your change, and open a pull request against `main`.
3. Keep pull requests focused: one idea per PR.
4. Run the validation checks before you push (see [Checks](#checks) below) — CI runs the same checks on every PR.

## Proposing a new rewrite example or rule

Every example or rule in a PR must carry:

- **Before / after** — the original sentence and the plain rewrite, side by side.
- **RASA scores** — score the rewrite on Rhythmic, Accurate, Substantive, Authentic (0–2 each). A rewrite only ships if it passes: ≥ 6/8 with no zero.
- **A one-line note** on what the change teaches — why the original fails and why the rewrite works.

Rules should be stated as something an agent can follow mechanically ("prefer active voice", "one idea per sentence"), not as vague taste ("write nicely").

Good first issues: a rewrite example in a domain we don't cover yet (health, finance, legal, education), a translation of a guide section, or a missing word-swap pair for your language's jargon.

## Ground rules

- **No verbatim copying from other sources.** Examples and rules must be written by you, or be generic public-domain phrasing. Do not paste text from books, articles, or other skill repos.
- **Keep both skills in sync where a rule applies to both.** If a rule is language-neutral (sentence length, active voice, cutting filler), add it to both `bahasa-indonesia-plain` and `english-plain`, adapted to each language. Language-specific rules go only in the skill they belong to.
- **Do not change the meaning of examples.** A rewrite that drops or alters the original meaning fails the Accuracy dimension and will not be merged.
- **Keep it plain.** The docs themselves should pass the RASA bar — if a sentence in the README or GUIDE needs a dictionary, rewrite it.

## Logo and brand assets

Assets live in `assets/` (`logo.svg`, `banner.png`, `social-preview.png`). If you change them:

- Keep the same filenames and aspect ratios, so the README and social preview keep working without edits.
- Keep the logo legible at 16 px (favicon size) and at banner size — one mark, no fine detail that disappears small.
- Export PNGs at 2x for retina screens and keep file sizes reasonable (banner under ~500 KB).
- Describe what changed and why in the PR — a logo change is a brand decision, not a drive-by tweak.

## Checks

CI runs `.github/workflows/validate.yml` on every push and PR. You can run the same checks locally before pushing:

```bash
# from the repo root — validates skill frontmatter, VERSION files,
# relative links in all docs, and install commands in the README
python3 - <<'PY'
import re, pathlib
root = pathlib.Path('.')
for skill in sorted((root / 'skills').iterdir()):
    fm = (skill / 'SKILL.md').read_text().split('---')[1]
    keys = dict(l.split(':', 1) for l in fm.strip().splitlines() if ':' in l)
    assert {'name', 'description', 'user-invocable'} <= set(keys), skill
    assert (skill / 'VERSION').read_text().strip(), skill
print('skills OK')
PY
```

The full check lives in the workflow file — if you change a doc link or an install command, make sure the workflow still passes.

## Code of conduct

Be kind and direct. No harassment, no personal attacks, no dismissive replies to new contributors. Disagree about the writing, not the writer. If a discussion gets heated, a maintainer will step in; if you experience a problem with a maintainer, open an issue titled "Conduct concern" and it will be handled privately.

## Style for the repo

- Docs in English first; the README carries a short Bahasa Indonesia section. Example sentences stay in the language of their skill.
- One command per install route, copy-pasteable, using `rzlco666/lugas` — no other repo names.
- Scripts stay dependency-light: `bash`, `git`/`curl`, coreutils only.
- Changelog entries go in [CHANGELOG.md](CHANGELOG.md) under the Unreleased section — one line per user-facing change.

## Questions

Open an issue — that's the fastest way to reach a maintainer.
