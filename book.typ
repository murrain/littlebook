// book.typ
// Main entry point for "The Little Book of House Rules"
// Sequential page order for digital viewing (two panels per page)
//
// Pages in reading order (1-14):
// 1: Title, 2: Welcome, 3: Rule1, 4: Rule2, 5: Rule3, 6: Rule4,
// 7: Rule5, 8: Rule6, 9: Rule7, 10: Rule8, 11: Rule9, 12: Rule10,
// 13: Closing, 14: Contact, 15-16: Coloring page

#import "styles.typ": *
#import "rules.typ": *

#set document(
  title: "The Little Book of House Rules",
  author: "Public Assistance Office",
)

#show: book-layout

// Pages 1-2: Title, Welcome
#spread(title-panel-content, welcome-panel)

// Pages 3-4: Rule 1, Rule 2
#spread(rule-one-panel, rule-two-panel)

// Pages 5-6: Rule 3, Rule 4
#spread(rule-three-panel, rule-four-panel)

// Pages 7-8: Rule 5, Rule 6
#spread(rule-five-panel, rule-six-panel)

// Pages 9-10: Rule 7, Rule 8
#spread(rule-seven-panel, rule-eight-panel)

// Pages 11-12: Rule 9, Rule 10
#spread(rule-nine-panel, rule-ten-panel)

// Pages 13-14: Closing, Contact
#spread(closing-panel, contact-panel)

// Pages 15-16: Coloring page
#coloring-spread("coloring-art_t.png")
