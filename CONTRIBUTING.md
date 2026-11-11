# Contributing to Lugas

Thanks for wanting to make plain language better. Contributions are welcome — new rewrite examples, sharper rules, fixes, and translations of the guide.

## How to contribute

1. **Open an issue first** for anything bigger than a typo, so we can agree on the direction before you write a lot.
2. Fork the repo, create a branch (`git checkout -b add-example-id-12`), make your change, and open a pull request against `main`.
3. Keep pull requests focused: one idea per PR.

## Proposing a new rewrite example or rule

Every example or rule in a PR must carry:

- **Before / after** — the original sentence and the plain rewrite, side by side.
- **RASA scores** — score the rewrite on Rhythmic, Accurate, Substantive, Authentic (0–2 each). A rewrite only ships if it passes: ≥ 6/8 with no zero.
- **A one-line note** on what the change teaches — why the original fails and why the rewrite works.

Rules should be stated as something an agent can follow mechanically ("prefer active voice", "one idea per sentence"), not as vague taste ("write nicely").

## Ground rules

- **No verbatim copying from other sources.** Examples and rules must be written by you, or be generic public-domain phrasing. Do not paste text from books, articles, or other skill repos.
- **Keep both skills in sync where a rule applies to both.** If a rule is language-neutral (sentence length, active voice, cutting filler), add it to both `bahasa-indonesia-plain` and `english-plain`, adapted to each language. Language-specific rules go only in the skill they belong to.
- **Do not change the meaning of examples.** A rewrite that drops or alters the original meaning fails the Accuracy dimension and will not be merged.
- **Keep it plain.** The docs themselves should pass the RASA bar — if a sentence in the README or GUIDE needs a dictionary, rewrite it.

## Style for the repo

- Docs in English first; the README carries a short Bahasa Indonesia section. Example sentences stay in the language of their skill.
- One command per install route, copy-pasteable, using `rzlco666/lugas` — no other repo names.
- Scripts stay dependency-light: `bash`, `git`/`curl`, coreutils only.

## Questions

Open an issue — that's the fastest way to reach a maintainer.
