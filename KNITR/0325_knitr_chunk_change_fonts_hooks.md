---
title: "0325_knitr_chunk_change_fonts_hooks.Rmd"  
date: "last updated  27 February 2022"   
output:   
  html_document:  
    code_folding: hide
    toc: true 
    toc_depth: 2
    toc_float: true
  pdf_document:   
    latex_engine: lualatex    
    toc: true
    toc_depth:  2   
    keep_tex:  true
    keep_md:    true
fontsize: 11pt   
geometry: margin=0.5in,top=0.25in   
---

##  PURPOSE:   Two methods to change font in just 1 chunk.
First, latex wrap around chunk.  Works.

Second, use knitr_hooks to write function triggered by a chunk. Works.

Available latex sizes:

\footnotesize
normalsize \
small \
footnotesize \
scriptsize \
tiny \



knitr functions (pdf): https://cran.r-project.org/web//packages/knitr/knitr.pdf
knitr home:  https://yihui.org/knitr/ and various sections
source code:  https://github.com/yihui/knitr/tree/master/R

\normalsize




<!-- knitr::current_input() -->


```r
mtcars |> head()
      ##                    mpg cyl disp  hp drat   wt qsec vs am gear carb
      ## Mazda RX4         21.0   6  160 110 3.90 2.62 16.5  0  1    4    4
      ## Mazda RX4 Wag     21.0   6  160 110 3.90 2.88 17.0  0  1    4    4
      ## Datsun 710        22.8   4  108  93 3.85 2.32 18.6  1  1    4    1
      ## Hornet 4 Drive    21.4   6  258 110 3.08 3.21 19.4  1  0    3    1
      ## Hornet Sportabout 18.7   8  360 175 3.15 3.44 17.0  0  0    3    2
      ## Valiant           18.1   6  225 105 2.76 3.46 20.2  1  0    3    1
```

\tiny

```r
mtcars |> head()
      ##                    mpg cyl disp  hp drat   wt qsec vs am gear carb
      ## Mazda RX4         21.0   6  160 110 3.90 2.62 16.5  0  1    4    4
      ## Mazda RX4 Wag     21.0   6  160 110 3.90 2.88 17.0  0  1    4    4
      ## Datsun 710        22.8   4  108  93 3.85 2.32 18.6  1  1    4    1
      ## Hornet 4 Drive    21.4   6  258 110 3.08 3.21 19.4  1  0    3    1
      ## Hornet Sportabout 18.7   8  360 175 3.15 3.44 17.0  0  0    3    2
      ## Valiant           18.1   6  225 105 2.76 3.46 20.2  1  0    3    1
```
\normalsize



```r
# foo1 will be a function
library(knitr)
knit_hooks$set(foo1 = function(before, options, envir) {
  if (before) {
      
    '\\tiny _I appear before a chunk!_\n\n \\hrule \n\n '
  } else {
    '\\hrule \n\n \\normalsize  \n\n_I am after a chunk..._'
  }
})
```

<!-- trigger foo1 -->
\tiny _I appear before a chunk!_

 \hrule 

 

```r
1+1
      ## [1] 2
```

\hrule 

 \normalsize  

_I am after a chunk..._






