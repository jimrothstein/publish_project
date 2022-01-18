---
title: "`r knitr::current_input()`"
date: "`r paste('last updated', 
    format(lubridate::now(), ' %d %B %Y'))`"
output:   
  html_document:  
        code_folding: show
        toc: true 
        toc_depth: 4
        toc_float: true
  pdf_document:   
    latex_engine: xelatex  
    toc: true
    toc_depth:  4   
fontsize: 11pt   
geometry: margin=0.4in,top=0.25in   
TAGS:  color, terminal, ASCII 
---
~/code/MASTER_INDEX.md
file="/home/jim/.config/nvim/templates/skeleton.R"



### PURPOSE:   print to console in color, base R only
### ASCII Control Sequence
  * No .Rmd | No KNITR | No pandoc | no latex

## `\033[42m`  turns on color green (`003[41m` red)
## `\033[m`    returns to normal
## Note:  \033 is considered ONE character (`ESC`) but regular expression will
## see 3 characters, problem. 
  {
      writeLines("hello \033[42mworld \033[mBye")
  }
