// book.typ
// Main entry point for "The Little Book of House Rules"
// Sequential page order for digital viewing
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

// Page 1: Title
#spread(title-panel-content, blank-panel())

// Page 2: Welcome
#spread(welcome-panel, blank-panel())

// Page 3: Rule 1
#spread(rule-one-panel, blank-panel())

// Page 4: Rule 2
#spread(rule-two-panel, blank-panel())

// Page 5: Rule 3
#spread(rule-three-panel, blank-panel())

// Page 6: Rule 4
#spread(rule-four-panel, blank-panel())

// Page 7: Rule 5
#spread(rule-five-panel, blank-panel())

// Page 8: Rule 6
#spread(rule-six-panel, blank-panel())

// Page 9: Rule 7
#spread(rule-seven-panel, blank-panel())

// Page 10: Rule 8
#spread(rule-eight-panel, blank-panel())

// Page 11: Rule 9
#spread(rule-nine-panel, blank-panel())

// Page 12: Rule 10
#spread(rule-ten-panel, blank-panel())

// Page 13: Closing
#spread(closing-panel, blank-panel())

// Page 14: Contact
#spread(contact-panel, blank-panel())

// Page 15-16: Coloring page
#coloring-spread("coloring-art_t.png")
