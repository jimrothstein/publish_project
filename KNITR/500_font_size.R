##  file <- "500_font_size.R"
##  ------------
##  PURPOSE:
##      Use spin syntax for chunks.
##      Also change font in chunk.
##
#       This is an *.R file.
#
#   USAGE:
#       rmarkdown::render("500_font_size.R", ...)
##  ------------
#
#
#'
#' Future documentation:  
#' To run this:   knitr::spin("2010_first_spin_code.R" )  
#' This is an R file.  
#' There is no .Rmd, no rmarkdown.  

#+ setup, include=F
knitr::opts_chunk$set(echo = TRUE,  
                      comment="      ##", 
                      collapse=TRUE)

#'  knitr::current_input()
#+  what_is_my_name
(this_file  <- knitr::current_input())

#'  Add line numbers  
#+ number_line,  attr.source='.numberLines'
if (TRUE) {
  x <- 1:10
  x + 1
}

#' formatR
#+ number_line, tidy="formatR" 
if (TRUE) {
  x <- 1:10
  x + 1



#' background
#+ number_line, background='#F7F7F7'
if (TRUE) {
  x <- 1:10
  x + 1
}

#'
#' font size 
#+  number_line, size='tiny' 
if (TRUE) {
  x <- 1:10
  x + 1
}


#' Now write an inline value. We know the value of $\pi$ is
{{ pi }}
#'
#'
#'
/*  multi-line

*/

# /*  multi-line
#    version 2 - ignored ... it is a comment!
# */
#'
#'
#'
#'  Another {{ }} example of inline code
#+ multi_line_comment, echo=T
ans  <-  {{1+1}}
ans


#'  Tiny font for this chunk
#+  font, size="tiny"
    print("hello")


#'  Use latex footnotesize
#+  footnotesize
    print("hello -footnotesize")


#'
/**  Multi-line comment
    Are you sure?
    Not sure.
*/

# Try single line
/*   one line C style */

#'  To run this
#'
#'  -----------
#+  eval=F, include=F
   file  <- "500_font_size.R"
   file  <- normalizePath(file)
   file
   rmarkdown::render(file,
                      output_format= "pdf_document",
                      #output_format= "html_document",
                      output_dir =  "~/Downloads/print_and_delete/")

