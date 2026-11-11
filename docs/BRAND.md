# Lugas — Brand Guide

> One page. If you only read one thing: the mark is the letter **L, finished
> with a square full stop** — a sentence said plainly, and finished.

## The idea

**Lugas** means straightforward, direct, plain-spoken. The symbol is the
initial **L** drawn as two thick strokes on a 16-unit grid, closed by a
square period. The period is the whole product in miniature: two agent
skills that make AI write plain, human language — in Bahasa Indonesia and
English — and then stop. No speech bubbles, no quotation marks, no books,
no pens, no checkmarks, no chat bubbles, no AI sparkle. One idea, one
sentence, one mark.

The amber period is the ownable detail: it is the only warm element in the
identity, and it repeats after the wordmark in the lockup (`Lugas.`).

## Construction

- Canvas: `viewBox="0 0 256 256"` for the symbol; lockups keep height 256.
- Grid unit: 16. Stem 48 wide, foot 48 tall, period 32 × 32.
- Symbol footprint: x 28–228, y 32–224 — centred on 128, 128.
- All angles are 0° / 90°. No curves, no diagonals in the chosen mark.
- All letterforms in the lockups are vector paths (Liberation Sans Bold
  outlines), never live `<text>` — the logo renders identically everywhere.
- Wordmark: cap height 112, baseline 216 in lockup coordinates, tracking
  −3%. The baseline sits 8 units above the symbol foot so the `g`
  descender (ends at 250.5) stays inside the canvas.
- Clear space: one period (32 units) on every side of the mark. Nothing
  enters that space — no text, no rule, no other logo.
- Minimum sizes: symbol **16 px** (the period is still a visible 2 px
  square); horizontal lockup **120 px wide**; stacked lockup **96 px wide**.
  Below that, use the symbol alone.

## Colour

| Name | HEX | RGB | Use |
|---|---|---|---|
| Lugas Pine | `#0E4A44` | 14, 74, 68 | Primary. Symbol, headlines, dark backgrounds. |
| Lugas Amber | `#F0A202` | 240, 162, 2 | Accent only. The period, rules, highlights. |
| Lugas Ink | `#14201D` | 20, 32, 29 | Wordmark and body text on light backgrounds. |
| Lugas Paper | `#F7F4EC` | 247, 244, 236 | Light background. Warm off-white, never pure white for large areas. |
| White | `#FFFFFF` | 255, 255, 255 | Reversed mark, text on Pine. |

Why pine + amber, not blue: the category (AI/dev tools) is drowned in
blue–purple gradients and fintech blue. Deep pine green is ownable here,
reads as calm, grown-up and human, and pairs with a warm amber the way a
highlighter pairs with a page — the accent literally marks the point.

Contrast (WCAG, verified): Pine on Paper **9.18:1**, Ink on Paper
**15.24:1**, White on Pine **10.09:1**, Amber on Pine **4.74:1** — all pass
AA for normal text. Amber on white is only **2.13:1**: never set amber
text on white; amber is a graphic accent on light backgrounds, never body
copy.

## Typography

System fonts only — no webfont dependency, so the identity works in a
README, a terminal, and a slide deck without fetching anything.

- Wordmark: Liberation Sans Bold outlines (paths in the SVG files). Do not
  re-typeset the wordmark in another font.
- Everything else: the system stack — `system-ui, -apple-system, "Segoe
  UI", Roboto, "Helvetica Neue", Arial, sans-serif`. Headings bold,
  body regular. Sentence case everywhere, matching the skills themselves.

## Approved backgrounds

- Colour symbol + Ink wordmark: on Paper, White, or any light neutral.
- White (reversed) symbol + wordmark: on Pine, Ink, or any dark neutral.
- One-colour black (`logo-mono.svg`): anywhere a single ink is required
  (print, fax, single-colour merch, embroidery).
- Favicon tile: Pine rounded square with the white symbol; use
  `favicon.svg` / `favicon-16.png` / `favicon-32.png` as-is.

## Misuse

- Don't stretch, squeeze, or rotate the mark.
- Don't recolour the L or the period (the period is Amber in colour use,
  the mark's colour in mono/white use — never another hue).
- Don't add gradients, shadows, outlines, or effects.
- Don't put the colour mark on a busy photograph — use the white version
  on a solid dark overlay, or the mono version on a solid light one.
- Don't set the wordmark in another typeface, and don't letterspace it
  further — the tracking is part of the lockup.
- Don't use the symbol at under 16 px, and don't crop the period.

## Files

| File | What it is |
|---|---|
| `assets/logo.svg` | Primary horizontal lockup, colour (Pine + Amber + Ink). |
| `assets/logo-mono.svg` | Horizontal lockup, one-colour black. |
| `assets/logo-white.svg` | Horizontal lockup, reversed white. |
| `assets/logo-stacked.svg` | Stacked lockup, colour (symbol above wordmark). |
| `assets/logo-symbol.svg` | Symbol only, colour. |
| `assets/logo-symbol-mono.svg` | Symbol only, one-colour black. |
| `assets/logo-symbol-white.svg` | Symbol only, reversed white. |
| `assets/favicon.svg` | Favicon: Pine rounded tile + white symbol. |
| `assets/favicon-32.png`, `assets/favicon-16.png` | Favicon PNGs at true size. |
| `assets/apple-touch-icon.png` | 180 × 180, Pine square + white symbol. |
| `assets/icon-512.png` | 512 × 512, transparent, colour symbol. |
| `assets/social-preview.png` | 1280 × 640, Pine, white symbol + tagline. |
| `assets/banner.png` | 1600 × 500 README hero, Paper, colour lockup + tagline. |
| `assets/concepts/concept-a.svg` | Concept A (chosen), black. |
| `assets/concepts/concept-b.svg` | Concept B (alternate), black. |
| `assets/concepts/concept-c.svg` | Concept C (alternate), black. |
| `assets/concepts/concept-sheet.png` | All three concepts at large + true 64/32/16 px sizes. |

## Alternates (kept, not chosen)

- **B — Two lines become one.** Two parallel strokes (ID + EN) merge
  through exact 45° diagonals into one bold line. Strong story, but at a
  glance it reads as a generic merge/forward glyph.
- **C — The tangled line, straightened.** A zigzag in exact 45° segments
  resolves into one straight line. Honest idea, but it fails the 16 px
  test — the teeth collapse into a wavy blob — and it reads as a pulse
  line at small sizes.

## How it was tested

Rendered and inspected at 512, 64, 32 and 16 px; one-colour and reversed
versions checked; rotated 180° and mirrored (no unintended shapes — the
reversed L is simply a reversed letterform, as with any initial mark).
Concept A is the only one of the three that stays legible at 16 px.
