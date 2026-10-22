#import "@preview/cetz:0.4.2": *
#import "@preview/cetz-plot:0.1.3": *

// REF: see https://snippyst.com/snippets/njpxpy7bku186f37  
#canvas(
  length: 1cm,
  {
    import draw: *
    plot.plot(
      size: (6.5, 6.5),
      name: "plot",
      axis-style: "school-book",
      x-grid: "both",
      y-grid: "both",
      x-tick-step: 1,
      y-tick-step: 1,
      x-minor-tick-step: 0.5,
      y-minor-tick-step: 0.5,
      x-label: [$x$],
      y-label: [$y$],
      x-min: -2,
      x-max: 4.5,
      y-min: -2,
      y-max: 4.5,
      {
        plot.add(
          style: (stroke: blue + 1.5pt),
          domain: (-2, 4.5),
          x => calc.exp(x),
        )
        plot.add(
          style: (stroke: green + 1.5pt),
          domain: (0.01, 4.5),
          x => calc.ln(x),
        )
        plot.add(
          style: (
            stroke: (paint: gray, thickness: 1pt, dash: "loosely-dashed"),
          ),
          domain: (-2.5, 4.5),
          x => x,
        )
        plot.annotate({
          set-style(circle: (fill: red.darken(10%), stroke: none, radius: 0.1))
          circle((1, calc.exp(1)), name: "p1")
          circle((calc.exp(1), 1), name: "p2")
          line((1, calc.exp(1)), (calc.exp(1), 1), stroke: red.darken(10%))
          content((1.75, 4), anchor: "west", box(fill: white, text(
            blue,
            $f(x) = e^x$,
          )))
          content((0.75, -1), anchor: "west", box(fill: white, text(
            green,
            $g(x) = ln(x)$,
          )))

          content("p1", anchor: "west", padding: 0.3, box(fill: white, text(
            red.darken(10%),
            $(1|e)$,
          )))
          content("p2", anchor: "south-west", padding: 0.2, box(
            fill: white,
            text(red.darken(10%), $(e|1)$),
          ))
        })
      },
    )
  },
)
