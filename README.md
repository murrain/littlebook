# The Little Book of House Rules

A printable booklet explaining how public assistance processes work, written in plain language for clients.

## What This Is

This is a small orientation guide designed to reduce anxiety and set realistic expectations for people applying for or receiving public assistance. It explains how the process works without getting into eligibility rules or policy details.

The tone is calm, reassuring, and non-judgmental. It normalizes confusion and emphasizes shared responsibility between staff and clients.

## How to Compile

Requires [Typst](https://typst.app/) installed.

```bash
typst compile book.typ
```

This generates `book.pdf` in the same directory.

## How to Update Rules

All content lives in `rules.typ`. Each rule is defined as a separate variable using the `rule-page` function.

To edit a rule, find the corresponding variable (e.g., `rule-three`) and modify the title or content parameters.

To add a new rule:
1. Define a new variable in `rules.typ` using `rule-page(number, title, content)`
2. Import and display it in `book.typ`

The welcome and closing pages use `simple-page` for basic text layout without rule numbering.

Layout and typography are controlled in `styles.typ` and should not need frequent changes.

## Printing Notes

This booklet is designed for half-letter pages (5.5 × 8.5 inches).

For best results:
- Print double-sided
- Use short-edge flip (tumble)
- Print on standard letter paper and cut in half, or print directly to half-letter if your printer supports it
- Staple along the inside edge

The page margins are set up to accommodate binding on the inside edge (wider inside margin).

## File Structure

- `book.typ` — main entry point, imports and assembles content
- `styles.typ` — page layout, typography, reusable functions
- `rules.typ` — all booklet content (welcome, rules, closing, contact)
- `README.md` — this file

## Version Control

This project is designed to work well with git. Content and layout are separated so changes can be reviewed and diffed cleanly.

Each rule is isolated in its own variable, making it easy to track which specific guidance has changed over time.
