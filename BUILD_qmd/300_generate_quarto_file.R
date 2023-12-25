---
  title:  /home/jim/code/try_things_here/NSE_project/saveas 300_generate_quarto_file.R
---

##  PURPOSE (2023-12-22)   
##  R Functions to generate a quarto file
##  use glue, not paste0


  heading  <- function(){
      glue::glue("---\n",
                 "title:\n",
                 "---\n")

  }

  four_colons <- function(class = NULL) {
    if (is.null(class)) {
    return("::::")
    } else {
    return(paste0("::::", "{", class, "}"))
    }
  }

# ---------------
  # knitr chunk
# ---------------
  chunk  <- function(chk=NULL){
    glue::glue("```",
               "{ quote('{') }",
               "r,  {chk}",
                "}\n",
               "\n",
               "```\n"
               )
  }

name  <- "chunk01"
chunk(chk = name)
chunk(chk = "chunk02")
# ----------------------
#   Many chunks

names  <- c("chunk01", "chunk02", "chunk03")
unlist(lapply(names, chunk))
# ----------------------------

scss_class  <- function(){
  glue::glue(".X",
             "{quote('{')}\n",
             "  background: yellow;\n",
             "{quote('}')}\n",
             )
}
scss_class()



  .X {
  background: yellow;
  }

heading()
four_colons(".column1")
four_colons()
three_colons <- function() (":::")

z=           paste0(
                  heading(), 
                  four_colons(".someClass"), 
                  four_colons(), 
                  sep=""
                  )
z
z = paste0("a", "b")
z
z=paste0(heading(), sep="")
z
writeLines(
           paste0(
                  heading(), 
                  four_colons(".someClass"), 
                  four_colons(), 
                  sep=""
                  ),
           con="abcd")

readLines("abcd")

paste0("a","b", sep="")
writeLines(paste0("a","b", sep=""), con="xyz")
readLines("xyz")
     
