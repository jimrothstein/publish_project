// Basic examples:      https://sitandr.github.io/typst-examples-book/book/basics/scripting/basics.html

// NEXT:   debug in typst online editor

#set page("us-letter")
#set heading(numbering: "1.")
#set text(
  font: "New Computer Modern",
  size: 10pt
)

To render: typst compile array.typ

= text

== url
// #show <element>:
#show link: underline
#link("https://nytimes.com")[See nytimes]

#show link: set text(stroke: rgb(10, 0, 0))
#link("https://nytimes.com")[See nytimes]

// changes EVERY Following heading
//#show heading: set text(green)

== function to color [body], if selected 
// toggle on/off; set [body] a color
#let format(body, on: false) = {
  set text(green) if on
  [#body]
}
// does not look like call:
#format( on: true)[a line]  // body is [a line]
#format(on: false)[a second line]

== red block
#let block_text = block(stroke: red, inset: 1em)[This is red.]

#block_text

#figure(caption: "The block", block_text)

== text
lorem(10) \
#lorem(10)

#block(
    fill: luma(230),
)

= Content block
[ *hello*  jim]

= Content + code
#{ let a = [jim]
 [My name is ] + a
}

= function

#let f(name) = "Hello, " + name
#f("world!") \
#f("jim")

// The following syntaxes are equivalent
#let f = (name) => "Hello, " + name
#let f(name) = "Hello, " + name

== function with content argument, using []
#let f(name) = [Hello, #name]
#f[World] // also don't forget we can use it to pass content!

== default args
#let f(name: "no name") = [Hello, #name!]

#f()
#f(name: "Joe")
#f(name: "world")


= R
```r
2+2
```


= Text Boxes

#show heading: set text(navy)

= This text goes into the box

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

#alert[
  Danger is imminent!
]

#alert(fill: blue)[
  KEEP OFF TRACKS
]




=Introduction \
+Chapter1 \
+Chapter2


// red box

#box(stroke: red, inset: 1em)[
#lorem(5)
]

= set


= show rule


RULE: show "XX": text(green)[I am green] \
#show "XX": text(green)[I am green]

Do you see "XX" text?
