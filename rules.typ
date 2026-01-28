// rules.typ
// All booklet content as panels for 2-up layout

#import "styles.typ": *

#let title-panel-content = title-panel(
  [The Little Book of House Rules],
  [A friendly guide to how public assistance works]
)

#let welcome-panel = simple-panel(
  background-image: "poppy-flowers-botanical.png",
)[
  = Welcome

  #v(0.2in)

  This system can feel confusing.

  You're not doing anything wrong if it does.

  This little book isn't about rules to trip you up.

  It's about how the process works, so there are fewer surprises.

  Think of it as a map, not a test.
]

#let rule-one-panel = rule-panel(
  1,
  [Asking for help is allowed],
  [
    You don't need to know the right words.

    You don't need to know which form does what.

    That's our job.

    Your job is to tell us what's going on.
  ]
)

#let rule-two-panel = rule-panel(
  2,
  [The process happens in stages],
  [
    Most cases move through a few common steps:

    #v(0.1in)

    Getting started

    Sharing information

    Waiting while we review

    Receiving benefits

    Checking in again later

    #v(0.2in)

    You don't have to memorize this.

    It just helps to know that waiting is part of the process, not a mistake.
  ]
)

#let rule-three-panel = rule-panel(
  3,
  [Paperwork is about clarity, not suspicion],
  [
    When we ask for documents, it's usually because:

    #v(0.1in)

    The rules require proof, or

    Something changed and we need to understand it

    #v(0.2in)

    It's not a judgment.

    It's how the system keeps things fair.

    If something is hard to get, tell us.
  ]
)

#let rule-four-panel = rule-panel(
  4,
  [Life changes, and that's expected],
  [
    People move.

    Jobs change.

    Households change.

    That's normal.

    #v(0.2in)

    What helps most is letting us know when something changes, even if you're unsure whether it matters.

    You won't break anything by asking.
  ]
)

#let rule-five-panel = rule-panel(
  5,
  [Deadlines exist, but help still does too],
  [
    Some steps have time limits.

    Missing one can cause delays or pauses.

    If that happens:

    #v(0.1in)

    Reach out anyway

    Ask what your options are

    Don't assume it's over

    #v(0.2in)

    Many problems are easier to fix sooner, but they're often still fixable later.
  ]
)

#let rule-six-panel = rule-panel(
  6,
  [You don't need to memorize every rule],
  [
    You don't need to know:

    #v(0.1in)

    Every eligibility detail

    Every exception

    Every form name

    #v(0.2in)

    You do need to:

    #v(0.1in)

    Share accurate information

    Ask questions when something doesn't make sense

    #v(0.2in)

    Understanding grows as you go.
  ]
)

#let rule-seven-panel = rule-panel(
  7,
  [The system moves slower than real life],
  [
    We know emergencies don't wait.

    The system sometimes does.

    If something urgent is happening:

    #v(0.1in)

    Say so

    Ask about faster options

    Let us know what you're worried about

    #v(0.2in)

    We can't always speed things up, but we can explain what's possible.
  ]
)

#let rule-eight-panel = rule-panel(
  8,
  [Confusion is not failure],
  [
    If you feel lost, overwhelmed, or unsure, that's not on you.

    This system was built over many years, by many people, for many situations.

    Needing things explained again is normal.
  ]
)

#let rule-nine-panel = rule-panel(
  9,
  [You are allowed to check in],
  [
    It's okay to ask:

    #v(0.1in)

    "What's the status?"

    "Did you receive this?"

    "What happens next?"

    #v(0.2in)

    Checking in doesn't slow things down.

    Silence doesn't help either.
  ]
)

#let rule-ten-panel = rule-panel(
  10,
  [We are on the same side of the table],
  [
    Our role is to:

    #v(0.1in)

    Help you understand the process

    Apply the rules correctly

    Support you through each step

    #v(0.2in)

    Your role is to:

    #v(0.1in)

    Share what's going on

    Let us know when things change

    Ask when something doesn't make sense

    #v(0.2in)

    That's how this works best.
  ]
)

#let closing-panel = simple-panel(
  background-image: "balloon_girl.png",
  background-dy: 0.75in - 60pt,
)[
  = One last thing

  #v(0.2in)

  You don't need to get everything right on the first try.

  This is a process, not a personality test.

  If you're here, you're already doing the right thing.
]

#let contact-panel = simple-panel[
  = Need help or have a question?

  #v(0.3in)

  *Address:*

  1111 San Felipe Rd #206

  Hollister, CA 95023

  #v(0.2in)

  *Phone:* (831) 636-4180

  #v(0.2in)

  *Office hours:* Mon-Fri 8:00AM - 5:00PM

  #v(0.2in)

  *What to bring if you can:* #box(width: 2.3in, line(length: 100%, stroke: 0.5pt))

  #v(0.15in)

  #box(width: 4in, line(length: 100%, stroke: 0.5pt))
]
