---
title: "skeleton.Rmd"
date: "last updated  24 January 2022"
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




```r
library(jimTools)
```
<!-- new way to set CHUNK OPTIONS -->





#### html ONLY (fonts)
`<h3>Test big font</h3>`{=html}`<h4>Test medium font</h4>`{=html}`<h5>Test smaller font</h5>`{=html}
`<h3>Outside chunck</h3>`{=html}
