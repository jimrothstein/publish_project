#import "@preview/cetz:0.3.1"
#import "@preview/cetz-plot:0.1.0": *

#set page("us-letter")
#set heading(numbering: "1.")
#set text(
  font: "New Computer Modern",
  size: 10pt
)

This typst typ file.
To render:

typst compile array.typ


#block(
    fill: luma(230),
)

= short cut
#let sse = math.subset.eq
$
  sse
  subset.eq
$

= array
#let values = (1, 7, 4, -3, 2)

#values.at(0) \
#values.last() \
#values.at(-1) \
#(values.at(0) = 3)

Calc even

#values.find(calc.even) \
#values.filter(calc.odd) \
#values.map(calc.abs) \
#values.rev() \
#(1, (2, 3)).flatten() \
#(("A", "B", "C")
    .join(", ", last: " and "))


= Content block
[ *hello*  jim]

= Content + code
#{
 let a = [jim]
 [My name is ] + a
}

= Linear Algebra

//$ U subset R^n $

== Column Space of matrix A

column space
$ A subset R^n $


== vector

$arrow(v)$

$v := vec(x_1, x_2, x_3)$

== with special symbols
$
forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
$

== unicode

$$
∀ v, w ∈ V, α ∈ 𝕂: α ⋅ (v + w) = α v + α w
$$

== SVD

A can be any matrix

$A = U Sigma V$
$Phi$

$2 + x = ?$


= Equations + Comment

$
  & norm(abs(f+g)^(p-1) dot f)_1 + norm(abs(f+g)^(p-1) dot g)_1 \
  &= norm(abs(f+g)^(p-1) dot (abs(f) + abs(g)))_1
    &wide "（积分是线性运算）" \
  &>= norm(abs(f+g)^(p-1) dot abs(f+g))_1
    &wide "（绝对值的三角不等式）" \
  &= norm(abs(f+g)^p)_1 \
  &= norm(f+g)_p^p
    &wide "（定义）"
$

= R
```r
2+2
```


= Fibonacci sequence
The Fibonacci seq uses recurrence: $F_n = F_(n-1) + F_(n-2)$
Or, in closed form:

$ F_n = round(1 / sqrt(5) phi.alt^n) $

$
forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
$

== Indicator Function

/*   throw an error

#def[
  #align(center)[
    *indicator function* $bb(1)_A$ of $A$:

    $ forall omega in Omega: bb(1)_A(omega) = cases(0 &"if" &omega in.not A, 1 &"if" &omega in A) $
  ]
]

*/

USE the *typst app* !
- For typst & math, use this file For Math.
- For typst & Text, use ... .qmd
- Typst for pdf (future html?) 
- latex does seem to work. But plenty does NOT work on this page.
- BEST:    use typst app

/*
Watch <https://www.youtube.com/watch?v=2DbuqYKOsrY> \
Tutorial: <https://typst.app/docs/tutorial/writing-in-typst/> 
*/

= More math

$
forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
$

$
// cont — contour
integral, integral.cont, integral.double, integral.square, sum.integral\

// lt — less than, gt — greater than
lt, lt.circle, lt.eq, lt.not, lt.eq.not, lt.tri, lt.tri.eq, lt.tri.eq.not, gt, lt.gt.eq, lt.gt.not
$

$arrow.b, triangle.r, angle.l$

$arrow.r, triangle.r, angle.l$

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

#show math.equation.where(block: true): pad.with(left: 1cm)
#show math.equation.where(block: true): set align(left)

#sym.arrow.r

$#sym.arrow.r$

/*
$\rightarrow$

*/

$\u{2192}$

arrow.r

->



= Simple Math

The equation $Q = rho A v + C$
defines the glacial flow rate.

$A = pi r^2$ \

$"area" = pi dot "radius"^2$ \

$cal(A) :=
    { x in RR | x "is natural" }$ \
	
// create variable 
 #let x = 5 


// use variable
 #x < 17 

$ x < y => x gt.eq.not y $

/*
$sum_(k=0)^n k    \
    &= 1 + ... + n \
    &= (n(n+1)) / 2$

$frac(a^2, 2)$

$\frac{1}{2}$

$vec(1, 2, delim: "[")$

$mat(1, 2; 3, 4)$

$lim_x = op("lim", limits: #true)x$
*/

=Introduction \
+Chapter1 \
+Chapter2


// red box

#box(stroke: red, inset: 1em)[
#lorem(5)
]