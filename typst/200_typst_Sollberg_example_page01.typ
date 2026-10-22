
/*   (comment)
 REF: https://dsollbergerquarto.netlify.app/posts/typst_syllabus/typst_syllabus
 */

#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "@preview/showybox:2.0.4": showybox
#import "@preview/treet:1.0.0": *

#set page("us-letter") //thanks Europeans!
#set text(
  font: "New Computer Modern",
  size: 14pt
)

#set align(center)
#block(
  fill: rgb("f58025"),
  inset: 14pt,
  width: 100%,
  [= SML 301: Data Intelligence
= Modern Data Science Methods]
)

== Instructor: Derek Sollberger
=== (teacher email)

#set align(center)


#grid(
  columns: (1fr, 1fr),
  [== Post-Docs:

- person name (person email)
- person name (person email)],
  [== Teaching Assistants:

- person name (person email)
- person name (person email)
- person name (person email)
], [], [],
)

#set align(left+horizon)
#set text(
  font: "New Computer Modern",
  size: 10pt
)

= grid with numbers
#grid(
  columns: 5,
  gutter: 5pt,
  ..range(25).map(str)
)

#grid(
  columns: (1fr, 1fr),
)

= treet tree-list
#tree-list(
[
  - 1
    - 1.1
      - 1.1.1
    - 1.2
      - 1.2.1
      - 1.2.2
        - 1.2.2.1
  - 2
  - 3
    - 3.1
      - 3.1.1
    - 3.2
]
) // end tree-list
