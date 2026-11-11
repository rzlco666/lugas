---
name: english-plain
description: Load this skill whenever you write or revise English text that must be understood on first read — UI copy, microcopy, error messages, forms, guides, reports, documentation, emails, and public-service content. Use it for any audience, including non-native readers, tired readers, and readers using screen readers. It gives you a plain-English workflow, a scored RASA rubric (Rhythmic, Accurate, Substantive, Authentic), word swaps, templates, and a rewrite library.
user-invocable: true
---

# English Plain

Write English that anyone can understand on first read. No jargon, no filler, no guessing. If a reader has to read a sentence twice, the sentence failed — not the reader.

**RASA** is the test every text must pass. The word comes from Indonesian *rasa* — taste, feeling, meaning. Good writing should have taste: it should feel right and mean something. The four dimensions:

- **Rhythmic** — it flows when read aloud.
- **Accurate** — every word earns its place; nothing is vague or misleading.
- **Substantive** — it says something real, with evidence, not decoration.
- **Authentic** — it sounds like a person, not a template.

If you are writing in Bahasa Indonesia, or for readers who read best in Bahasa Indonesia, switch to the sibling skill bahasa-indonesia-plain — it uses the same RASA framework, in Indonesian.

## 60-second quick start

Smallest possible use: paste your text, then give one instruction — "Rewrite this in plain English, RASA pass, keep the meaning." That is enough to start.

Three rules fix 80% of bad text:

1. **Point first.** Put the point, the action, or the answer in the first sentence. Do not build up to it.
2. **One idea per sentence.** If a sentence does two jobs, split it into two sentences.
3. **Everyday word.** Use the word a reader would use in conversation — *use*, not *utilise*; *help*, not *facilitate*.

If you have 60 seconds, do only those three. Then run the RASA pass when you have more time.

## Two modes

On first activation in a session, ask the user which mode they want — unless they already said. State the resolved mode once, then work in it.

### Mode 1 — Write (during)

Apply the rules while drafting. Draft, run the RASA pass, self-check, then deliver the text plus a short delivery report (see [Delivery report](#delivery-report)).

### Mode 2 — Review (after)

Audit existing text. Do not rewrite yet.

1. Read the text and score it with the [RASA rubric](#rasa-rubric-scored).
2. List numbered findings: each finding names the exact sentence, the rule it breaks, and a suggested fix.
3. Wait for the user to approve which findings to fix.
4. Fix only the approved ones, then report what changed and the new RASA score.

Never silently rewrite in Review mode. Never skip the approval step.

## Workflow (5 steps)

### Step 1 — Understand the brief and the reader

Before writing a word, answer:

- **Goal:** what should the reader know, feel, or do after reading?
- **Action:** what is the one thing they must do next? Name it.
- **Reader:** who reads this? What do they already know? What do they not know?
- **Reading conditions:** phone or desktop? Stressed, rushed, or calm? Native or non-native English?
- **Success test:** how will you know the text worked?

If you cannot answer the goal and the action, ask the user. Do not write around an unclear brief.

### Step 2 — Set the register

Pick once, then stay consistent for the whole text:

- **Spelling:** US or UK. Follow the project's existing choice; if none exists, pick US and say so. Never mix *organize* and *organise* in one text.
- **Tone:** formal or conversational. Default to conversational unless the context is legal, medical, or ceremonial.
- **Voice:** active voice, second person (*you*) for instructions, first person plural (*we*) for commitments. Pick *you* or *we* per sentence and do not flip mid-paragraph.
- **Formality of address:** use the reader's name only where the product already does.

Record the register in one line at the top of your working notes, e.g. `Register: US spelling, conversational, you-voice.`

### Step 3 — Draft inverted pyramid

Most important first, details after, background last.

1. **Lead:** the point, the action, or the answer — in the first sentence or first heading.
2. **Essentials:** what the reader must know to act.
3. **Details:** supporting facts, numbers, steps.
4. **Background:** context, links, fine print — only if the reader needs it.

Cut anything that does not serve the goal from Step 1. If a paragraph survives only because it sounds impressive, delete it.

### Step 4 — Pass RASA

Run the four passes in this order (see [RASA rubric](#rasa-rubric-scored)):

1. **Rhythmic** — read the text aloud. Fix anything you stumble on.
2. **Accurate** — check every claim, number, and instruction. Replace vague words with specific ones.
3. **Substantive** — cut decoration, add evidence, keep only what matters.
4. **Authentic** — remove corporate voice, stock phrases, and false warmth.

### Step 5 — Self-check and report

Run the [self-check checklist](#self-check-checklist), fix what fails, then output the [delivery report](#delivery-report).

## Decision tree — which skill, which mode

- **If you are writing in Bahasa Indonesia, or for Indonesian readers** → use the sibling skill bahasa-indonesia-plain, not this one. This skill is for English text only.
- **If the text already exists and you need to judge it first** → use this skill in Mode 2 — Review. Score it, list findings, wait for approval, then fix only what was approved.
- **If you are starting from a blank page** → use this skill in Mode 1 — Write. Follow the 5-step workflow, then run the RASA pass.
- **If your organisation has a style guide** → follow the guide for spelling, terms, and names, and use this skill for plainness: short sentences, everyday words, and the RASA test. When the guide and this skill disagree on a word, the guide wins for that word — say so in the delivery report.
- **If the text is short — a button, an error message, a form label, a notification** → start from the [Templates](#templates) or the [Rewrite library](#rewrite-library). Do not run the full 5-step workflow for one line.
- **If there is no style guide and no existing text** → write from scratch with this skill. Set the register in Step 2 (US or UK spelling, tone, voice), draft inverted pyramid, then score with RASA. Do not invent a style guide first.

Run the [self-check checklist](#self-check-checklist), fix what fails, then output the [delivery report](#delivery-report).

## Readability targets

These are hard targets, not aspirations. Check them before delivery.

| Element | Target |
|---|---|
| Sentence length | 12–20 words; never more than 25 |
| Ideas per sentence | 1 |
| Paragraph | Max 3 sentences, 1 topic |
| Heading | Max ~65 characters |
| Heading case | Sentence case (only the first word capitalised, plus proper nouns) |
| Lists | Use a list when there are 3+ items, steps, or options |
| Verbs | Active voice by default; passive only when the actor truly does not matter |

**How to shorten a long sentence:** split it. One idea, one sentence. If a sentence has *and* twice, it is probably two sentences.

**How to shorten a paragraph:** one topic per paragraph. If the topic changes, start a new paragraph.

## Word swaps — say it simply

Replace the left word with the right word. If the plain word feels too plain, that is the point.

| Instead of | Say |
|---|---|
| utilise / utilize | use |
| facilitate | help |
| commence | start |
| terminate | end |
| endeavour | try |
| ascertain | find out |
| prior to | before |
| subsequent to | after |
| in the event of | if |
| in order to | to |
| due to the fact that | because |
| a large number of | many |
| a small number of | few |
| at this point in time | now |
| in the near future | soon |
| implement | put in place / do |
| leverage | use |
| optimise / optimize | improve |
| expedite | speed up |
| disseminate | share / send |
| cognisant / cognizant | aware |
| notwithstanding | despite |
| furthermore | also / and |
| moreover | also |
| nevertheless | but / still |
| in addition | also |
| with regard to | about |
| in relation to | about |
| pursuant to | under / by |
| in accordance with | under / as |
| as per | by / under |
| aforementioned | this / that |
| herein | here |
| whereby | by which / how |
| henceforth | from now on |
| in the vicinity of | near |
| a plethora of | many |
| alleviate | ease / reduce |
| ameliorate | improve |
| obfuscate | hide / confuse |
| promulgate | announce |
| erroneous | wrong |
| approximately | about |
| sufficient | enough |
| require | need |
| request | ask |
| inform | tell |
| assist | help |
| purchase | buy |
| provide | give |
| obtain | get |
| demonstrate | show |
| indicate | show / say |
| considerable | large / a lot |
| fundamental | basic |
| methodology | method / way |
| functionality | what it does |
| impactful | useful / strong |
| synergy | working together |
| stakeholder | the people involved (name them) |
| going forward | from now on |
| touch base | talk / check in |
| circle back | come back to this |
| low-hanging fruit | easy wins |
| ballpark figure | rough estimate |
| think outside the box | think of new ideas |
| move the needle | make a difference |
| at the end of the day | in the end |
| take it to the next level | improve it |
| run it up the flagpole | ask people what they think |

### Banned clichés

Do not use these. They add words and remove meaning:

- *At the end of the day*, *when all is said and done*, *needless to say*, *it goes without saying*, *in today's fast-paced world*, *cutting-edge*, *world-class*, *best-in-class*, *game-changer*, *revolutionary*, *seamless*, *leverage our synergies*, *think outside the box*, *take it to the next level*, *at this moment in time*, *please do not hesitate to contact us*, *your call is important to us*, *we value your business*, *kindly*, *please be advised*, *please note that*, *as you are aware*.

### Idioms that do not translate

Non-native readers and translation tools take idioms literally. Replace them:

| Idiom | Plain replacement |
|---|---|
| touch base | talk / meet / check in |
| low-hanging fruit | easy wins |
| ballpark figure | rough estimate |
| hit the ground running | start fast |
| on the same page | in agreement |
| move the goalposts | change the rules |
| the elephant in the room | the obvious problem |
| bite the bullet | accept a hard choice |
| break the ice | start the conversation |
| under the weather | ill / sick |
| raining cats and dogs | raining hard |
| kill two birds with one stone | do two things at once |
| back to square one | start again |
| in a nutshell | in short |
| rule of thumb | general guide |
| out of the blue | suddenly / unexpectedly |
| cost an arm and a leg | very expensive |
| once in a blue moon | very rarely |
| a piece of cake | very easy |
| hit the nail on the head | exactly right |
| beat around the bush | avoid the point |
| get cold feet | become nervous / unsure |
| spill the beans | share the secret |
| the ball is in your court | it is your decision now |

## RASA rubric (scored)

Score each dimension 0–2. **Pass = total 6 or more out of 8, and no dimension scored 0.** If any dimension is 0, the text fails, whatever the total.

| Dimension | 0 — Fail | 1 — Adequate | 2 — Strong |
|---|---|---|---|
| **Rhythmic** | Sentences stumble when read aloud; uneven length, awkward rhythm, hard to follow | Reads smoothly most of the time; a few long or clunky sentences | Flows naturally aloud; varied sentence length, clear pauses, easy to follow |
| **Accurate** | Vague, misleading, or wrong; key facts, numbers, or steps missing or unclear | Mostly clear and correct; one or two vague words or unverified details | Every claim specific and checkable; numbers, names, and steps exact |
| **Substantive** | Padding, clichés, or decoration; no evidence, no real content | Some real content, but filler remains or evidence is thin | Every sentence adds something real; claims backed by facts, examples, or numbers |
| **Authentic** | Corporate voice, stock phrases, false warmth, or tone that does not fit the reader | Sounds human in places, but slips into template language | Sounds like a real person writing to a real reader; tone fits the situation |

### Four-pass revision order

Do the passes in this order. Do not skip ahead.

1. **Rhythmic first** — read the whole text aloud. Mark every place you stumble, pause, or re-read. Split long sentences. Vary sentence length: short sentences for emphasis, medium ones for explanation. Read again until it flows.
2. **Accurate** — check every fact, number, date, name, and instruction against the source. Replace vague words (*many, soon, various, several, important*) with specific ones (*12 people, on 4 June, 3 steps*). If you cannot verify a claim, cut it or flag it.
3. **Substantive** — delete decoration. Cut adjectives that do no work (*very, really, extremely, cutting-edge*). Add evidence where a claim needs it: a number, an example, a link, a step. If a sentence adds nothing, delete it.
4. **Authentic** — read it as the reader. Remove corporate voice and false warmth (*We value your feedback!* when you do not act on it). Keep warmth that is real: a clear apology, a concrete next step, a human sign-off.

### Worked RASA audit

One stiff paragraph, audited end to end. The original is 82 words.

**Original:**

> We would like to take this opportunity to inform all residents that, due to unforeseen circumstances and in accordance with the ongoing improvement programme, the water supply in the northern district will be temporarily suspended for a period of approximately eight hours, commencing at midnight. Residents are kindly requested to make the necessary arrangements in advance, and we apologise for any inconvenience that may be caused by this essential maintenance work, which is being undertaken to facilitate the improvement of service delivery.

**Scores before:**

| Dimension | Score (0–2) | Evidence |
|---|---|---|
| Rhythmic | 0 | Two very long sentences; the reader stumbles on *in accordance with the ongoing improvement programme* and has to re-read. |
| Accurate | 1 | The time is vague — midnight on which day, and *approximately* eight hours gives no end time. |
| Substantive | 0 | Padding throughout (*take this opportunity, make the necessary arrangements*); no date, no end time, no useful detail. |
| Authentic | 0 | Corporate voice throughout — *kindly requested, we apologise for any inconvenience* — no real person speaking. |
| **Total** | **1/8 — fail** | Two dimensions score 0, so the text fails even before the total is counted. |

**Rewritten:**

> Water will be off in the northern district tonight, from midnight to 8 a.m.
>
> Fill your containers before midnight. You will have water again at 8 a.m.
>
> We are fixing the pipes to improve the water supply. We are sorry for the disruption.

**Scores after:**

| Dimension | Score (0–2) | Evidence |
|---|---|---|
| Rhythmic | 2 | Short sentences that flow when read aloud; one idea per sentence. |
| Accurate | 2 | Exact window (midnight to 8 a.m.), exact place, exact action. |
| Substantive | 2 | Every sentence adds something real: the outage, the action, the reason. |
| Authentic | 1 | Sounds human and direct, but *We are sorry for the disruption* is still a standard apology. |
| **Total** | **7/8 — pass** | Pass: total 6 or more, and no dimension scored 0. |

Keep warmth that is real: a clear apology, a concrete next step, a human sign-off.

## Templates

Copy, fill in the `[placeholders]`, and delete any line you do not need. Keep the structure; change the words to fit.

### Error message

> **[What happened, in plain words.]**
>
> [What the reader can do next, as a step.]
>
> If that does not work, [fallback: contact, link, or alternative].

Rules: say what happened, say what to do, never blame the reader. No error codes in the main text (put them in a collapsible detail or a support link).

Example:

> **We could not save your changes.**
>
> Check your connection, then try again.
>
> If it still does not work, contact support and quote code E-104.

### Empty state

> **[Title: what is missing, in 4 words or fewer.]**
>
> [One sentence: what this is for, or why it is empty.]
>
> [Button: the action that fills it.]

Example:

> **No reports yet**
>
> Reports you create will appear here.
>
> [Create your first report]

### Success

> **[What is done, in past tense.]**
>
> [What happens next, if anything.]

Example:

> **Your payment is done.**
>
> We sent a receipt to [email]. Your order ships on [date].

### Destructive confirmation

> **[Title: what will happen.]**
>
> [What will be lost, in plain words. Say if it cannot be undone.]
>
> [Cancel] [Action verb + object — never just "Delete" alone if the object matters: "Delete report"]

Example:

> **Delete this report?**
>
> The report and its 12 comments will be gone for good. You cannot undo this.
>
> [Keep report] [Delete report]

### Onboarding

> **Welcome to [product].**
>
> [One sentence: what it does for the reader.]
>
> **First, [step 1].** [One sentence on how.]
> **Then, [step 2].** [One sentence on how.]
>
> [Link: a 2-minute guide / help page.]

### Public-service announcement / email

> **[Subject: the action or the news, not the sender.]**
>
> [First line: who this affects and what changes.]
>
> [What to do, as numbered steps.]
>
> [When it starts / deadline, with date and time zone.]
>
> [Where to get help: link or phone number.]

### Step-by-step guide

> **How to [goal]**
>
> Before you start, you need [prerequisite].
>
> 1. [Step, starting with a verb.]
> 2. [Step, starting with a verb.]
> 3. [Step, starting with a verb.]
>
> **Done?** [How to check it worked.]

### Polite refusal / delay

> **[Thank them, in one line.]**
>
> [Say no, or say when — plainly, in the first paragraph.]
>
> [Give the reason, in one sentence. Offer an alternative if one exists.]

Example:

> Thank you for asking.
>
> We cannot add this feature before July. Our team is finishing the new payment flow first.
>
> We can offer [alternative] instead. Would that help?

### Loading / waiting

> **[What is happening now.]**
>
> [How long it may take, honestly. Say what happens next.]

Example:

> **Saving your file…**
>
> This usually takes less than 30 seconds. Do not close this tab.

### Consent / permission request

> **[What you are asking for, in plain words.]**
>
> [Why you need it, and what happens if the reader says no.]
>
> [How to change the choice later.]
>
> [Allow] [Not now]

Example:

> **Can we send you email updates?**
>
> We will send one email a month about new features. If you say no, you can still use everything.
>
> You can change this any time in Settings.
>
> [Yes, send updates] [Not now]

## Rewrite library

Each pair: **Before** (bad) → **After** (good) → **Why** (the rule fixed).

### 1. Button copy

- **Before:** "Submit your request for processing by clicking here to proceed with utilisation of the service."
- **After:** "Send request"
- **Why:** One action, one verb; no filler, no *utilisation*.

### 2. Error message

- **Before:** "An unexpected error has occurred. Please try again later or contact the administrator if the problem persists."
- **After:** "We could not save your changes. Check your connection, then try again."
- **Why:** Says what happened and what to do; no blame, no vague *administrator*.

### 3. Form field

- **Before:** "Please input your full legal name as it appears on your government-issued identification document."
- **After:** "Full name (as on your ID)"
- **Why:** Short label; the detail is in brackets, not a sentence.

### 4. Email — account update

- **Before:** "We are writing to inform you that your account settings have been updated pursuant to your recent request. Please be advised that these changes will take effect immediately."
- **After:** "You changed your account settings. The changes are live now."
- **Why:** Active voice, *you* as the actor, no *pursuant to* or *please be advised*.

### 5. Report — findings

- **Before:** "It is important to note that a considerable number of users experienced difficulties with regard to the utilisation of the new functionality, which resulted in a significant decrease in overall satisfaction."
- **After:** "Many users found the new feature hard to use. Satisfaction fell by 18%."
- **Why:** One idea per sentence; vague words replaced with a number.

### 6. Guide — how-to step

- **Before:** "In order to commence the process, the user should navigate to the settings page and subsequently click on the button labelled 'Export'."
- **After:** "To export your data: 1. Open Settings. 2. Select Export."
- **Why:** Imperative verbs, numbered steps, *in order to* and *subsequently* cut.

### 7. Legal / finance — terms

- **Before:** "The aforementioned party shall be liable for any and all charges incurred pursuant to the utilisation of the service, including but not limited to any fees, taxes, or surcharges as may be applicable."
- **After:** "You pay for what you use. That includes fees and taxes."
- **Why:** *You* instead of *the aforementioned party*; plain words; no legal filler.

### 8. Health — appointment reminder

- **Before:** "This is a reminder that your appointment is scheduled for the aforementioned date and time. Please ensure you arrive 15 minutes prior to your scheduled appointment time."
- **After:** "Your appointment is on Tuesday 9 June at 10 a.m. Please arrive 15 minutes early."
- **Why:** Exact date and time; *prior to* → *early*; one idea per sentence.

### 9. Public service — service change

- **Before:** "Please be advised that, due to unforeseen circumstances, the aforementioned service will be temporarily suspended until further notice. We apologise for any inconvenience this may cause."
- **After:** "The 42 bus will not run from Monday 8 June until Friday 12 June. Use the 43 bus instead. We are sorry for the disruption."
- **Why:** Specific dates and an alternative; a real apology, not a stock phrase.

### 10. Onboarding — welcome

- **Before:** "Welcome to our cutting-edge platform! We are delighted to have you on board. Please do not hesitate to explore our world-class features at your leisure."
- **After:** "Welcome. Here is how to start: 1. Add your first project. 2. Invite your team."
- **Why:** No clichés (*cutting-edge, world-class*); the reader gets steps, not praise.

### 11. Notification — push

- **Before:** "You have a new notification. Click here to view the latest updates and important information regarding your account."
- **After:** "Your report is ready. Open it to see the results."
- **Why:** Says what the notification is about; no *click here*.

### 12. Help content — password reset

- **Before:** "In the event that you have forgotten your password, you may utilise the password reset functionality by clicking on the link provided below, subsequent to which you will receive an email containing instructions."
- **After:** "Forgot your password? Select 'Reset password'. We will email you a link."
- **Why:** Question as heading; short sentences; *utilise* and *subsequent to* removed.

### 13. Finance — payment failed

- **Before:** "Your payment could not be processed due to insufficient funds. Please ensure that your payment method is valid and try again at a later date."
- **After:** "Your payment did not go through. There was not enough money in the account. Try a different card, or add money and try again."
- **Why:** Plain cause, concrete next steps, no *insufficient funds*.

### 14. Health — test results

- **Before:** "Your recent test results are now available for your review. Please log in to the portal to access them at your earliest convenience."
- **After:** "Your test results are ready. Sign in to see them."
- **Why:** Two short sentences; no filler (*at your earliest convenience*).

### 15. Legal / finance — fine print

- **Before:** "Notwithstanding the foregoing, the account holder shall be responsible for the prompt settlement of all outstanding obligations, failing which late payment charges shall be imposed in accordance with the prevailing schedule of fees."
- **After:** "Pay what you owe on time. If you pay late, we charge a late fee. The fee is in the fee list."
- **Why:** Nominalization and legal filler (*notwithstanding the foregoing, shall be imposed*) replaced with active verbs and a concrete next step.

### 16. Health — instructions

- **Before:** "Medication should be taken twice daily, preferably with food, and the course of treatment should be completed in its entirety, even if symptoms improve prior to completion."
- **After:** "Take this medicine twice a day, with food. Finish all of it, even if you feel better."
- **Why:** Passive chain (*should be taken, should be completed*) turned into direct imperatives; *prior to completion* became *even if you feel better*.

### 17. Error + retry flow

- **Before:** "An unexpected error has occurred during the processing of your request. Please kindly try again at a later time. If the issue persists, please contact support."
- **After:** "We could not upload your file. Try again now — your file is still there. If it fails again, contact support and quote code U-207."
- **Why:** Says what failed and what to do now; *please kindly* pile-up and vague *at a later time* removed; a code makes the fallback usable.

### 18. Long-form report — executive summary

- **Before:** "This report provides a comprehensive overview of the various initiatives undertaken during the period under review, and it is important to note that, notwithstanding the challenges encountered, significant progress was made with regard to the implementation of the key strategic priorities."
- **After:** "This report covers what we did in 2025. We finished 3 of our 5 goals. Hiring was slow, so 2 goals moved to 2026. Read page 2 for the numbers."
- **Why:** Point first, with real numbers (3 of 5, 2 moved); *comprehensive overview* and *significant progress* decoration cut.

- **Why:** Two short sentences; no filler (*at your earliest convenience*).

## Writing conventions

### Spelling and consistency

- Pick US or UK spelling once (see Step 2) and keep it through the whole text, including headings, buttons, and error messages.
- Keep the same word for the same thing. If it is a *report* on page one, it is a *report* on page ten — not a *document*, *file*, or *output*.
- Keep the same term for the same action. *Sign in* or *log in* — pick one.

### Case and punctuation

- **Sentence case** for headings and buttons: "Change your password", not "Change Your Password".
- **Oxford comma only to prevent ambiguity:** "We invited the managers, Aisha, and Ben" (comma needed) vs "We invited Aisha, Ben and Maya" (comma optional — leave it out).
- **Max one exclamation mark** per text, and only for real good news. Never in error messages.
- **No semicolons** in user-facing text. Split the sentence instead.
- **Em dashes sparingly:** one per paragraph at most. A comma or a full stop usually works better.
- **No double spaces, no trailing punctuation on headings.**

### Numbers

- Spell out one to nine in prose (*three steps*); use numerals for 10 and above (*12 reports*).
- Always use numerals for dates, times, measurements, and money (*4 June, 10 a.m., 5 kg, $20*).
- Percent: *18%* — no space before the sign.
- Money: *$5 million*, not *$5M*; *£20*, not *20 GBP* in prose.
- Ranges: *from 10 to 20*, not *10–20*, in prose. In tables, *10–20* is fine.
- Large numbers: *1,200* with a comma; *1.5 million*, not *1,500,000*, in prose.
- Never start a sentence with a numeral. Rewrite the sentence instead.

### Dates and times

- Dates: *4 June 2026* (day, month, year — no commas, no ordinal *4th*).
- Times: pick one style and keep it — *10 a.m.* or *14:00*. Do not mix them in one text.
- State the time zone when it matters: *10 a.m. Jakarta time (WIB)*.
- Use *noon* and *midnight*, never *12 a.m.* or *12 p.m.* (readers disagree on what they mean).
- Durations: *2 hours*, not *2 hrs*; *30 minutes*, not *30 mins*, in prose.

### Abbreviations and acronyms

- Expand Latin abbreviations: *for example* (not *e.g.*), *that is* (not *i.e.*), *and so on* (not *etc.*), *versus* is fine in prose but *vs.* is fine in short labels.
- Expand acronyms on first use: *National Health Service (NHS)*, then *NHS* after that.
- No *&* except in brand names (*Johnson & Johnson*). Write *and*.
- No *and/or*. Pick one, or write both out: *cats or dogs, or both*.
- No *he/she*. Use *they*, or rewrite in plural: *Readers should check their email.*

### Scope note

These rules apply to prose you produce: copy, guides, emails, reports, help text. Code, data tables, file names, and direct quotes keep their own conventions. Do not "fix" a quoted law, a code sample, or a table header to fit these rules.

## Inclusive, trauma-informed, and cognitively accessible language

### People first — with exceptions

- Use people-first language by default: *people with disabilities*, *a person living with diabetes*.
- Respect identity-first language where communities prefer it: many autistic people prefer *autistic person*; many Deaf people prefer *Deaf person*. When in doubt, use the term the person or community uses for themselves.
- Name people, do not label them: *Maria, who uses a wheelchair*, not *the wheelchair-bound woman*.
- Never use a condition as an insult or a metaphor: no *crazy*, *insane*, *lame*, *dumb*, *blind spot*, *falling on deaf ears*, *crippled by debt*.

### No stigmatising words

| Instead of | Say |
|---|---|
| the disabled | people with disabilities |
| suffers from | lives with / has |
| victim of | person affected by |
| addict / junkie | person with a substance use disorder |
| illegal immigrant | person without legal status / undocumented person |
| homeless person (as a label) | person experiencing homelessness |
| elderly (as a label) | older person / older people |
| normal (for people without a condition) | people without [condition] / typical |
| committed suicide | died by suicide |
| failed / failure (for a person) | did not pass / was not successful |

### Trauma-informed language

- **No false urgency:** no *Act now!*, *Last chance!*, *Only 2 left!* unless it is literally true and the reader needs to know.
- **User control:** say what the reader can choose, change, or undo. *You can change this any time in Settings.* *You can skip this step.*
- **No blame:** errors are the system's, not the reader's. *We could not save your changes*, not *You entered the wrong password* (say *That password does not match our records*).
- **Warn before hard content:** one line before distressing topics. *This page describes self-harm. You can skip it.*
- **Choice over pressure:** offer options, do not push one. *You can call, email, or visit in person.*

### Cognitive accessibility

- **Numbers and dyscalculia:** split figures into lists, not long strings. Use concrete comparisons: *about the size of a football field*, *roughly 3 bus rides*. Use *First, Second, Finally* for sequences of three or more.
- **Short working memory:** one idea per sentence, one topic per paragraph, one action per screen where possible.
- **Clear structure:** headings that say what the section does (*How to pay*), not clever titles (*Paying made easy*).
- **No hidden meaning:** say what you mean. No sarcasm, no irony, no jokes that depend on tone.
- **Consistent layout:** same order, same words, same place — every time.

### Screen readers and assistive tech

- **Link text must describe the destination:** *Read the 2026 annual report (PDF, 2 MB)*, never *click here* or *read more*.
- **Do not rely on colour, position, or shape alone:** *Required fields are marked with an asterisk (*)*, not *required fields are in red*.
- **No all-caps:** screen readers may read them letter by letter. Use sentence case.
- **Hashtags in CamelCase:** *#PlainEnglish*, not *#plainenglish*.
- **Alt text:** describe the image's meaning, not its appearance. *Chart: satisfaction fell from 80% to 62% in 2025*, not *bar chart*.
- **Tables:** give every table a header row and a short caption saying what it shows.

## Non-native readers

- **Short, literal sentences.** Subject + verb + object. *The library closes at 6 p.m.* — not *The library will be closing its doors at 6 p.m. sharp.*
- **One meaning per word.** Avoid words with many meanings (*run, set, take, get*) where a precise verb exists (*manage, arrange, carry, receive*).
- **Avoid phrasal verbs with obscure meanings.** *Postpone* beats *put off*; *cancel* beats *call off*; *continue* beats *carry on*; *tolerate* beats *put up with*.
- **Avoid culture-bound references:** sports metaphors (*home run, slam dunk*), holidays (*Thanksgiving, Boxing Day*) without explanation, seasons as time markers (*this fall* — say *in October*), local brands, and slang.
- **Translation-tool friendly:** short sentences, standard word order, no idioms, no contractions in formal text (*do not* instead of *don't* where the text will be translated).
- **Explain the unfamiliar once:** the first time you use a local term, add a short gloss. *The GP (your local doctor)*.
- **Numbers and dates:** use the international forms in this skill (4 June 2026, 14:00) and state the time zone.

## Global English

English is read everywhere. Write so a reader in another country, time zone, and culture can follow it without guessing.

- **Avoid US-centric references.** Do not assume the reader knows US holidays, US sports, US agencies, or US place names. *The Monday after Thanksgiving* means nothing to most readers — write the date. *A home run* means nothing outside baseball — write *a big success*. If a local reference is unavoidable, explain it in one short gloss.
- **Date and time clarity across time zones.** Always give the date in full (*4 June 2026*, never *06/04/2026* — readers disagree on which number is the month). Give the time with its time zone (*10 a.m. Jakarta time (WIB)*, or *14:00 UTC*). For a deadline, give both the date and the time zone, and say what happens after it. Never write *tomorrow* or *next Friday* without a date in a text that may be read later.
- **Spelling consistency when quoting.** Pick US or UK spelling once and keep it in your own words — but do not "fix" quoted spelling to match. If a law, a book title, or a person's words use *organise*, quote *organise*, even if the rest of your text uses *organize*. A changed quote is a wrong quote. If the spelling difference might confuse the reader, add *[sic]* or a short note — do not silently edit it.

- **Numbers and dates:** use the international forms in this skill (4 June 2026, 14:00) and state the time zone.

## Pitfalls

### Nominalizations — verbs turned into nouns

Verbs carry the action. Nouns hide it. Turn them back.

| Nominalization | Plain verb |
|---|---|
| perform a review of | review |
| make a decision | decide |
| conduct an investigation | investigate |
| give consideration to | consider |
| make an improvement to | improve |
| provide assistance to | help |
| take into consideration | consider |
| reach a conclusion | conclude |
| have a discussion about | discuss |
| make use of | use |
| in the event of a failure | if it fails |

### Stacked passives

One passive is sometimes fine. Two in a row hides who does what.

- **Bad:** "The form was completed and was submitted by the user, after which it was processed by the system."
- **Good:** "You filled in the form and sent it. We processed it."

### Noun strings

Three or more nouns in a row force the reader to unpack them.

- **Bad:** "user account security policy update notification"
- **Good:** "a notice about the update to the policy on account security" — or better: "We updated the policy on account security."

### Filler qualifiers

Cut these unless they change the meaning: *quite, very, really, just, actually, basically, various, several, possibly, perhaps, in order to, in fact, indeed, certainly, literally* (unless literal).

### Formal filler

Cut these: *kindly, whereby, herein, aforementioned, henceforth, notwithstanding, pursuant to, in accordance with, please be advised, please note that, it is important to note that, as you are aware*.

## Common mistakes

Eight failures that appear again and again. Each one names the RASA dimension it breaks.

1. **Burying the point**
   - **Wrong:** "Following a thorough review of the current situation and after careful consideration of all relevant factors, we have decided to close the library on Monday."
   - **Fix:** "The library is closed on Monday."
   - **Breaks:** Substantive — the point is hidden under 20 words of build-up; Accurate — the reader cannot find the answer.

2. **The "please kindly" pile-up**
   - **Wrong:** "Please kindly be advised that you are kindly requested to please submit the form at your earliest convenience."
   - **Fix:** "Please send the form by Friday 12 June."
   - **Breaks:** Authentic — stacked politeness sounds like a template, not a person; Accurate — there is no date.

3. **Noun stacks**
   - **Wrong:** "user account security policy update notification"
   - **Fix:** "We updated the policy on account security."
   - **Breaks:** Rhythmic — the reader has to unpack four nouns in a row before reaching a verb.

4. **Fake urgency**
   - **Wrong:** "Act now! Only 2 left! This offer ends tonight — do not miss out!"
   - **Fix:** "The offer ends on Friday 12 June at midnight Jakarta time (WIB). Two places are left."
   - **Breaks:** Authentic — pressure that is not literally true destroys trust; Accurate — no real date or number is given.

5. **The passive chain**
   - **Wrong:** "The form was completed and was submitted, after which it was processed and was approved by the committee."
   - **Fix:** "You filled in the form and sent it. We processed it. The committee approved it."
   - **Breaks:** Accurate — the reader cannot tell who did what; Rhythmic — the repeated *was* drags the sentence.

6. **Numbers without context**
   - **Wrong:** "Satisfaction decreased by 18% and engagement increased significantly."
   - **Fix:** "Satisfaction fell from 80% to 62%. Engagement rose from 40% to 47%."
   - **Breaks:** Accurate — *18%* of what, and *significantly* means nothing without a number; Substantive — the claim has no evidence.

7. **The apologetic hedge**
   - **Wrong:** "We are very sorry, but unfortunately we are unable to help you at this time, although we do hope you understand."
   - **Fix:** "We cannot help with this. Here is what you can do instead: call 021 555 0142."
   - **Breaks:** Authentic — a hedge that apologises three times and offers nothing sounds insincere; Substantive — no next step.

8. **The template voice**
   - **Wrong:** "We value your business and your feedback is important to us. Thank you for being a valued customer."
   - **Fix:** "Thank you. We read every message, and we reply within 2 working days."
   - **Breaks:** Authentic — stock phrases with no real commitment; Substantive — the sentence says nothing the reader can use.

Cut these: *kindly, whereby, herein, aforementioned, henceforth, notwithstanding, pursuant to, in accordance with, please be advised, please note that, it is important to note that, as you are aware*.

## Self-check checklist

Run this before delivery. Fix every failing line.

### Content

- [ ] The goal and the reader's next action are clear in the first paragraph.
- [ ] Every sentence is 25 words or fewer; most are 12–20.
- [ ] Every paragraph is 3 sentences or fewer, 1 topic.
- [ ] One idea per sentence; no sentence does two jobs.
- [ ] Headings are sentence case and under ~65 characters.
- [ ] Active voice by default; every passive has a reason.
- [ ] Numbers, dates, names, and steps are specific and verified.
- [ ] No jargon, no clichés, no idioms from the banned lists.
- [ ] No nominalizations, no stacked passives, no noun strings.
- [ ] US or UK spelling is consistent; *you/we* voice is consistent.

### Inclusion

- [ ] People-first language (or the community's preferred term).
- [ ] No stigmatising words, no ableist metaphors, no condition used as an insult.
- [ ] No false urgency; the reader's choices and how to undo them are stated.
- [ ] Link text describes the destination; nothing relies on colour or position alone.
- [ ] No all-caps; hashtags are CamelCase.
- [ ] A non-native reader could follow every sentence without an idiom dictionary.

### RASA

- [ ] Read aloud: it flows, nothing makes you stumble. (Rhythmic)
- [ ] Every claim is specific and checkable. (Accurate)
- [ ] Every sentence adds something real; filler is gone. (Substantive)
- [ ] It sounds like a person, not a template. (Authentic)
- [ ] Total score 6/8 or higher, and no dimension scored 0.

## Delivery report

After finishing — in Write mode, or after approved fixes in Review mode — output this report. Keep it short.

```markdown
## Delivery report — english-plain

**Mode:** Write / Review
**Register:** [US/UK spelling, formal/conversational, you/we voice]

### What changed
- [Change 1: what and where]
- [Change 2: what and where]

### RASA score
| Dimension | Score (0–2) | Note |
|---|---|---|
| Rhythmic |  |  |
| Accurate |  |  |
| Substantive |  |  |
| Authentic |  |  |
| **Total** | **/8** | Pass: yes/no |

### Deliberately kept — and why
- [Thing kept, e.g. a technical term, a long sentence, a passive — and the reason]
```

If a RASA dimension scores 0, say so plainly and fix it before delivery. Never report a pass that did not happen.

## Appendix — Bilingual bridge (English ↔ Bahasa Indonesia)

A shared glossary so teams working in both languages use the same terms. The sibling skill bahasa-indonesia-plain uses the same glossary.

| English | Bahasa Indonesia |
|---|---|
| plain language | bahasa polos |
| Rhythmic | Ritmis |
| Accurate | Akurat |
| Substantive | Sarat Makna |
| Authentic | Alami |
| call to action | ajakan |
| form of address | sapaan |
| active voice | kalimat aktif |
| passive voice | kalimat pasif |
| inverted pyramid | piramida terbalik |
| everyday word | kata sehari-hari |
| jargon | jargon |
| cliché | klise |
| checklist | daftar periksa |
| delivery report | laporan penyerahan |
| error message | pesan error |
| empty state | empty state |
| onboarding | onboarding |
| dyscalculia | diskalkulia |
| screen reader | pembaca layar |

If a RASA dimension scores 0, say so plainly and fix it before delivery. Never report a pass that did not happen.

## Quick reference

1. Goal first, action second, details last.
2. One idea per sentence, 12–20 words, max 25.
3. One topic per paragraph, max 3 sentences.
4. Active voice, *you* for instructions, *we* for commitments.
5. Plain words, specific numbers, real dates.
6. Read aloud, then score RASA (pass: 6/8, no 0s).
7. Report what changed, what you kept, and why.
