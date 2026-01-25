// styles.typ
// Layout, typography, and reusable components

#let book-layout(body) = {
  set page(
    width: 5.5in,
    height: 8.5in,
    margin: 0pt,
  )

  set text(
    font: "Libertinus Serif",
    size: 11pt,
    fallback: true,
  )

  set par(
    leading: 0.75em,
    justify: false,
  )

  body
}

#let title-page(title, subtitle) = {
  page(
    fill: rgb("#2c5f7a"),
    margin: (
      top: 0.75in,
      bottom: 0.75in,
      left: 0.6in,
      right: 0.6in,
    ),
    align(center + horizon)[
      #text(size: 22pt, weight: "semibold", fill: white)[
        #title
      ]

      #v(0.5in)

      #text(size: 14pt, style: "italic", fill: white)[
        #subtitle
      ]
    ]
  )
}

// Color palette for rule pages
#let rule-colors = (
  rgb("#4a7c8e"),  // slate blue
  rgb("#6b8e7f"),  // sage green
  rgb("#8e7b6b"),  // warm brown
  rgb("#7a6b8e"),  // soft purple
  rgb("#8e6b6b"),  // dusty rose
  rgb("#6b8e8e"),  // teal
  rgb("#8e8e6b"),  // olive
  rgb("#6b7a8e"),  // steel blue
  rgb("#8e7a6b"),  // terracotta
  rgb("#7a8e6b"),  // moss green
)

#let rule-page(number, title, content) = {
  let bg-color = rule-colors.at(calc.rem(number - 1, rule-colors.len()))

  page(
    fill: bg-color,
    margin: (
      top: 0.75in,
      bottom: 0.75in,
      left: 0.6in,
      right: 0.6in,
    ),
    [
      #v(0.2in)

      #text(size: 11pt, fill: white.transparentize(30%))[Rule #number]

      #v(0.25in)

      #text(size: 22pt, weight: "bold", fill: white)[
        #title
      ]

      #v(0.4in)

      #text(size: 18pt, weight: "medium", fill: white)[
        #content
      ]
    ]
  )
}

#let simple-page(content) = {
  page(
    fill: rgb("#fcfbf9"),
    margin: (
      top: 0.75in,
      bottom: 0.75in,
      left: 0.6in,
      right: 0.6in,
    ),
    [
      #v(0.3in)
      #content
    ]
  )
}
