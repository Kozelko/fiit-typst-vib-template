#let make-title(
  name: "",
  title: "",
  subtitle: "",
  note: "",
  page-limit: "",
  study-programme: "",
  study-field: "",
  supervisor: "",
  date: "",
) = {
  set page(
    margin: (left: 2.5cm, right: 2.5cm, top: 2.5cm, bottom: 2.5cm),
    numbering: none,
  )

  set text(size: 11pt)
  set align(center)

  v(0mm)

  // University name
  text(size: 11pt)[
    Slovak University of Technology in Bratislava\
    Faculty of Informatics and Information Technologies
  ]

  v(1mm)
  line(length: 100%, stroke: 0.5pt)

  v(55mm)

  // Student name
  text(size: 11pt)[#name]

  v(10mm)

  // Thesis title
  text(size: 14pt, weight: "bold")[#title]

  v(10mm)

  // Subtitle
  text(size: 12pt)[#subtitle]

  v(10mm)

  // Note
  text(size: 12pt)[#note]

  v(10mm)

  // Page limit
  text(size: 12pt)[#page-limit]

  v(1fr)

  // Bottom information
  align(left)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 2em,
      row-gutter: 0.5em,
      [Study Programme:], [#study-programme],
      [Study Field:], [#study-field],
      [Thesis Supervisor:], [#supervisor],
      [#date], [],
    )
  ]
}
