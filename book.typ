// book.typ
// Main entry point for "The Little Book of House Rules"
// Two-up layout: two half-pages side by side per sheet

#import "styles.typ": *
#import "rules.typ": *

#set document(
  title: "The Little Book of House Rules",
  author: "Public Assistance Office",
)

#show: book-layout

// Spread 1: Title + Welcome
#spread(title-panel-content, welcome-panel)

// Spread 2: Rules 1 + 2
#spread(rule-one-panel, rule-two-panel)

// Spread 3: Rules 3 + 4
#spread(rule-three-panel, rule-four-panel)

// Spread 4: Rules 5 + 6
#spread(rule-five-panel, rule-six-panel)

// Spread 5: Rules 7 + 8
#spread(rule-seven-panel, rule-eight-panel)

// Spread 6: Rules 9 + 10
#spread(rule-nine-panel, rule-ten-panel)

// Spread 7: Closing + Contact
#spread(closing-panel, contact-panel)
