/*   (comment)
 REF: https://dsollbergerquarto.netlify.app/posts/typst_syllabus/typst_syllabus
 typst compile array.typ

Watch <https://www.youtube.com/watch?v=2DbuqYKOsrY> \
Tutorial: <https://typst.app/docs/tutorial/writing-in-typst/> 
*/

#set page("us-letter") //thanks Europeans!

#set text(
  font: "New Computer Modern",
  size: 10pt
)

#let alert(body, fill: red) = {
  set text(white)
  set align(center)
  rect(
    fill: fill,
    inset: 8pt,
    radius: 4pt,
    [*Warning:\ #body*],
  )
}


#block(
    fill: luma(230),
)

#set align(center)
#block(
  fill: rgb("f58025"),
  inset: 10pt,
  width: 100%,

    [ = Colonoscopy Attempt 3]
)

#alert[
  Subject to Change!
]


#set align(left)
=== Monday, 3 Nov 2025


Bus \# 66 (south)
6:04 AM
6:29 AM

Bus \# 67 (north)
6:45 am

8 am DDS 


Bus to PDX
10:45 am  - xxxxx pm

Blue Line to xxxx \
Bus xxxx to hotel


=== Tuesday, 4 November 2025

=== Wednesday, 5 November 2025
#box(stroke: red, inset: 1em)[

9 am - *Bob* drives me to Salem (??)
...

3 pm, 4pm ??
*Bob* drives me to PDX ]

Hotel:  Stay or Checkout Thursday?
===  Thursday, 6 November 2025
===  Friday, 7 November 2025


#box(stroke: red, inset: 1em)[
11 am - checkin, Kaiser West (reception will call *Bob* (206) 330-1330‬) \
3?? pm - *Bob* picks me up??
]

6:09 pm - 8:47 pm TRAIN \
9:35 pm - 12:10 am BUS

Bus to Car
8:30 pm \
9:30 pm \
10:30 pm (LAST)

=== END  

= Text Boxes

#show heading: set text(navy)

= This text goes into the box








=Introduction \
+Chapter1 \
+Chapter2

#alert(fill: blue)[
  KEEP OFF TRACKS
]