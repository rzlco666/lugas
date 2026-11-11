# Lugas — agent skills for plain, human language

Two skills that make AI write text anyone can understand on the first read — in Bahasa Indonesia and English. Judged by the **RASA** framework: **Rhythmic, Accurate, Substantive, Authentic** — from the Indonesian word *rasa*: taste, feeling, meaning.

> Plain language is not dumbing down. It is respect for the reader's time.

## Before / after

**Bahasa Indonesia**

> ❌ *Sehubungan dengan hal tersebut di atas, dengan ini kami sampaikan bahwa pelaksanaan kegiatan dimaksud akan dilaksanakan pada tanggal yang telah ditetapkan sebelumnya.*
>
> ✅ *Kegiatan ini jadi tanggal 12 November 2026.*

**English**

> ❌ *It is imperative that all stakeholders ensure compliance with the aforementioned directives in a timely manner.*
>
> ✅ *Please follow these rules by Friday.*

## Skills

| Skill | Covers | Pick it for |
|---|---|---|
| `bahasa-indonesia-plain` | Plain Bahasa Indonesia: clear sentences, natural rhythm, correct grammar, no bureaucratic filler | Any Indonesian text — letters, announcements, reports, chat replies |
| `english-plain` | Plain English: short sentences, active voice, everyday words, no jargon | Any English text — emails, docs, messages, marketing copy |

## Install

### skills.sh (recommended)

```bash
npx skills add rzlco666/lugas
```

### Installer script

```bash
curl -fsSL https://raw.githubusercontent.com/rzlco666/lugas/main/install.sh | bash
```

Manual clone:

```bash
git clone https://github.com/rzlco666/lugas.git
cd lugas
./install.sh
```

### Claude Code (plugin)

```
/plugin marketplace add https://github.com/rzlco666/lugas
/plugin install lugas@lugas
```

### Codex

```bash
codex plugin marketplace add rzlco666/lugas
codex plugin add lugas@lugas
```

### Cursor

```bash
agent plugin marketplace add https://github.com/rzlco666/lugas
```

### Cline

```bash
cline plugin install https://github.com/rzlco666/lugas.git
```

### Kimi Code

```
/plugins install https://github.com/rzlco666/lugas
```

### Oh My Pi

```bash
omp plugin marketplace add rzlco666/lugas
omp plugin install lugas@lugas
```

### Pi package

```bash
pi install git:github.com/rzlco666/lugas
```

### Single files (no install)

Grab one skill file and drop it wherever your agent reads skills from:

```bash
curl -o plain-id.md https://raw.githubusercontent.com/rzlco666/lugas/main/plain-id.md
curl -o plain-en.md https://raw.githubusercontent.com/rzlco666/lugas/main/plain-en.md
```

> Note: `plain-id.md` and `plain-en.md` are standalone single-file copies of the two skills. They will be added at the repo root shortly after the skills land.

See [GUIDE.md](GUIDE.md) for the full walkthrough per agent, including global vs project scope.

## What it does

Each skill gives your agent a repeatable workflow:

1. **Read the draft** — understand what it must say and who will read it.
2. **Rewrite plain** — short sentences, everyday words, active voice, one idea per sentence.
3. **Score with RASA** — every rewrite is judged on four dimensions, 0–2 points each:

| Dimension | 0 | 1 | 2 |
|---|---|---|---|
| **Rhythmic** | Monotone, hard to read aloud | Mostly flows, some stiff spots | Natural cadence, reads like speech |
| **Accurate** | Meaning changed or lost | Meaning kept, small imprecision | Meaning exact, nothing added or dropped |
| **Substantive** | Empty filler, says nothing new | Some real content, some padding | Every sentence earns its place |
| **Authentic** | Sounds like a template or a bot | Human enough, a few canned phrases | Sounds like a real person wrote it |

**Pass: ≥ 6/8, and no dimension may score 0.** Anything below that gets rewritten again.

Two modes:

- **Write** — draft new text in plain language from the start.
- **Review** — take existing text and return a plain rewrite with a short note on what changed and why.

## Usage

Mention the skill by name in chat:

```
use bahasa-indonesia-plain to rewrite this announcement
```

```
use english-plain to review this email before I send it
```

**Per-skill notes**

- `bahasa-indonesia-plain` — keeps formal Indonesian where formality matters (official letters, legal notices) but strips the filler: *sehubungan dengan*, *dengan ini kami sampaikan*, *dimaksud*. Tone follows the audience: warm for the public, crisp for internal memos.
- `english-plain` — prefers everyday words over Latinate ones (*use* not *utilize*, *help* not *facilitate*), active voice, and sentences under ~20 words. Keeps technical terms only when the reader knows them.

## Update

```bash
npx skills add rzlco666/lugas   # re-run to update
# or
cd lugas && git pull && ./install.sh
```

Plugin users: update through your agent's plugin manager (`/plugin update lugas@lugas` in Claude Code, or the equivalent in your agent).

## Uninstall

```bash
./uninstall.sh        # asks for confirmation
./uninstall.sh --yes  # no prompt
```

Plugin users: remove the plugin from your agent's plugin manager, then run the script above to clear any skill folders the installer created.

## FAQ

**Is this a style guide?**
Partly — but it is a working skill, not a PDF you read once. It tells the agent exactly how to rewrite and how to score the result, so the output is checked every time.

**Which agents does it work with?**
Claude Code, Codex, Cursor, Cline, Kimi Code, Oh My Pi, Pi, and anything that reads `SKILL.md` files or the `skills.sh` format. See the install section above.

**Does it change the meaning of my text?**
No. Accuracy is a scored dimension: a rewrite that changes the meaning fails, however smooth it sounds.

**Can I use only one skill?**
Yes. Install with `--skills id` or `--skills en` (see `./install.sh --help`), or download just the single file you need.

**What is RASA?**
A four-dimension rubric — Rhythmic, Accurate, Substantive, Authentic — scored 0–2 each. Pass is 6/8 with no zero. The name comes from Indonesian *rasa*: taste, feeling, meaning. Good writing should have all three.

**Does it work on long documents?**
Yes. Long text is rewritten section by section, each section scored, so nothing slips through unreviewed.

## Bahasa Indonesia

**Lugas** adalah dua skill agen AI yang membuat tulisan mudah dipahami siapa pun pada bacaan pertama — dalam Bahasa Indonesia dan Inggris. Setiap hasil tulis dinilai dengan kerangka **RASA**: **Ritmis, Akurat, Substansial, Autentik** (dari kata *rasa*: rasa, perasaan, makna).

Cara pakai: sebut nama skill di chat, misalnya *"pakai bahasa-indonesia-plain untuk menulis ulang pengumuman ini"*. Instalasi satu perintah — lihat bagian Install di atas. Lisensi MIT, gratis, tanpa token atau koin apa pun.

## License

MIT — see [LICENSE](LICENSE). No token, no coin, no paywall. Free to use, fork, and improve.
