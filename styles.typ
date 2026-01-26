// styles.typ
// Layout, typography, and reusable components
// Two-up layout: two half-pages side by side on landscape letter

// Panel dimensions (half of landscape letter)
#let panel-width = 5.5in
#let panel-height = 8.5in

#let book-layout(body) = {
  set page(
    width: 11in,
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

// Create a title panel (content block, no page break)
#let title-panel(title, subtitle) = {
  box(
    width: panel-width,
    height: panel-height,
    fill: rgb("#2c5f7a"),
    inset: (
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

// Create a rule panel (content block, no page break)
#let rule-panel(number, title, content) = {
  let bg-color = rule-colors.at(calc.rem(number - 1, rule-colors.len()))

  box(
    width: panel-width,
    height: panel-height,
    fill: bg-color,
    inset: (
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

// Create a simple panel (content block, no page break)
#let simple-panel(content) = {
  box(
    width: panel-width,
    height: panel-height,
    fill: rgb("#fcfbf9"),
    inset: (
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

// Create a blank panel (for padding when odd number of pages)
#let blank-panel() = {
  box(
    width: panel-width,
    height: panel-height,
    fill: white,
  )
}

// Create a coloring page spread (full width, for center of booklet)
#let coloring-spread(image-path) = {
  page[
    #box(
      width: 100%,
      height: 100%,
      fill: white,
      inset: 0.5in,
      align(center + horizon)[
        #image(image-path, width: 100%, height: 100%, fit: "contain")
      ]
    )
  ]
}

// Back side coloring spread (rotated for duplex)
#let coloring-back-spread(image-path) = {
  page[
    #box(
      width: 100%,
      height: 100%,
      fill: white,
      rotate(180deg,
        box(
          width: 11in,
          height: 8.5in,
          inset: 0.5in,
          align(center + horizon)[
            #image(image-path, width: 100%, height: 100%, fit: "contain")
          ]
        )
      )
    )
  ]
}

// Place two panels side by side on one landscape page
#let spread(left-panel, right-panel) = {
  page[
    #box(
      width: 100%,
      height: 100%,
      stack(
        dir: ltr,
        spacing: 0pt,
        left-panel,
        right-panel,
      )
    )
  ]
}

// Back side of sheet - rotated 180 degrees for duplex printing
#let back-spread(left-panel, right-panel) = {
  page[
    #box(
      width: 100%,
      height: 100%,
      rotate(180deg,
        stack(
          dir: ltr,
          spacing: 0pt,
          left-panel,
          right-panel,
        )
      )
    )
  ]
}

// Legacy compatibility functions (create individual pages)
#let title-page(title, subtitle) = {
  page(
    width: 5.5in,
    height: 8.5in,
    margin: 0pt,
    fill: rgb("#2c5f7a"),
  )[
    #box(
      width: 100%,
      height: 100%,
      inset: (
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
  ]
}

#let rule-page(number, title, content) = {
  let bg-color = rule-colors.at(calc.rem(number - 1, rule-colors.len()))

  page(
    width: 5.5in,
    height: 8.5in,
    margin: 0pt,
    fill: bg-color,
  )[
    #box(
      width: 100%,
      height: 100%,
      inset: (
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
  ]
}

#let simple-page(content) = {
  page(
    width: 5.5in,
    height: 8.5in,
    margin: 0pt,
    fill: rgb("#fcfbf9"),
  )[
    #box(
      width: 100%,
      height: 100%,
      inset: (
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
  ]
}
