

```r
##  file <- "500_font_size.R"
##  ------------
##  PURPOSE:
##      Use spin syntax for chunks.
##      Also change font in chunk.
##
#       This is an *.R file.
#   USAGE:
#       knitr::spin("500_font_size.R")
##  ------------
#
#
##  Heading
```

Future documentation To run this:   knitr::spin("2010_first_spin_code.R" )
This is an R file.
There is no .Rmd, no rmarkdown.


```{.r .numberLines}
if (TRUE) {
  x <- 1:10
  x + 1
}
```

```
##  [1]  2  3  4  5  6  7  8  9 10 11
```

```{.r .numberLines}
    #
```

```r
ans  <-  {{1+1}}
ans
```

```
## [1] 2
```

```r
# Try single line
```

