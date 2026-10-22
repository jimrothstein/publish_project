---
title: "01_knitr_lua.Rmd"
date: "last updated  02 March 2022"
output:   
  html_document:  
        code_folding: show
        toc: true 
        toc_depth: 4
        toc_float: true
        mathjax: default
  pdf_document:   
    latex_engine: lualatex  
    toc: true
    toc_depth:  4   
    keep_tex:  true
    keep_md:   true
  header-includes:  
    -  \usepackage{helvet}  
    -  \renewcommand{\familydefault}{\sfdefault}  
    -  \usepackage{ulem}
fontsize: 10pt   
geometry: margin=0.4in,top=0.25in   
TAGS:  skeleton
---
~/code/MASTER_INDEX.md

PURPOSE:    Lua chunk inside .Rmd file
USAGE:      rmarkdown::render  as usual



#### supported engines

```r

names(knitr::knit_engines$get())
      ##  [1] "awk"       "bash"      "coffee"    "gawk"      "groovy"    "haskell"   "lein"     
      ##  [8] "mysql"     "node"      "octave"    "perl"      "psql"      "Rscript"   "ruby"     
      ## [15] "sas"       "scala"     "sed"       "sh"        "stata"     "zsh"       "asis"     
      ## [22] "asy"       "block"     "block2"    "bslib"     "c"         "cat"       "cc"       
      ## [29] "comment"   "css"       "dot"       "embed"     "fortran"   "fortran95" "go"       
      ## [36] "highlight" "js"        "julia"     "python"    "R"         "Rcpp"      "sass"     
      ## [43] "scss"      "sql"       "stan"      "targets"   "tikz"      "verbatim"  "glue"     
      ## [50] "glue_sql"  "gluesql"
```





