
#let title = [
  A fluid dynamic model
  for glacier flow
]

#set page(
  paper: "us-letter",
  header: align(
    right + horizon,
    title
  ),
  numbering: "1",
  columns: 2,
)
#set par(justify: true)
#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
  
[

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)
])


#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]



#lorem(550)


#box(stroke: red, inset: 1em)[
#lorem(5)
]
