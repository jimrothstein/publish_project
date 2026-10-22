#  ~/code/MASTER_INDEX.md
#   file <- "2010_first_spin_code.R"
# R
#
#
##  Heading
#' ### Future documentation  
#' To run this:   rmarkdown::render(file, .....)  
#' This is an R file.  
#' There is no .Rmd, no rmarkdown.   
#'
#'

#' **Assorted Comments styles (no output means success!)
#'
#'
/*  multi-line
    line2
    line 3  

*/

#' Try single line
/*   one line C style */



#+ multi_line_comment, echo=T
ans  <-  {{1+1}}
ans


#'  Change font to tiny
#'  ------------
#+  size="tiny"
    print("hello")


#'  To run this
#'
#'  -----------
#+  eval=F, include=F
   file  <- "2010_first_spin_code.R"
   rmarkdown::render(file,
                      output_format= "pdf_document",
                      #output_format= "html_document",
                      output_dir =  "~/Downloads/print_and_delete/")

