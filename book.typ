// book.typ
// Main entry point for "The Little Book of House Rules"
// Booklet imposition for saddle-stitch binding
//
// Print duplex, stack sheets, fold in half, nest together.
// Pages will be in correct reading order (1-14).
//
// Page mapping:
// 1: Title, 2: Welcome, 3: Rule1, 4: Rule2, 5: Rule3, 6: Rule4,
// 7: Rule5, 8: Rule6, 9: Rule7, 10: Rule8, 11: Rule9, 12: Rule10,
// 13: Closing, 14: Contact

#import "styles.typ": *
#import "rules.typ": *

#set document(
  title: "The Little Book of House Rules",
  author: "Public Assistance Office",
)

#show: book-layout

// Sheet 1 (outermost) - front: Contact(14), Title(1)
#spread(contact-panel, title-panel-content)

// Sheet 1 (outermost) - back: Welcome(2), Closing(13) [rotated, order swapped]
#back-spread(welcome-panel, closing-panel)

// Sheet 2 - front: Rule10(12), Rule1(3)
#spread(rule-ten-panel, rule-one-panel)

// Sheet 2 - back: Rule2(4), Rule9(11) [rotated, order swapped]
#back-spread(rule-two-panel, rule-nine-panel)

// Sheet 3 - front: Rule8(10), Rule3(5)
#spread(rule-eight-panel, rule-three-panel)

// Sheet 3 - back: Rule4(6), Rule7(9) [rotated, order swapped]
#back-spread(rule-four-panel, rule-seven-panel)

// Sheet 4 (innermost) - front: Rule6(8), Rule5(7)
#spread(rule-six-panel, rule-five-panel)

// Sheet 4 (innermost) - back: blank
#back-spread(blank-panel(), blank-panel())
