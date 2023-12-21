---
  title:  /home/jim/code/try_things_here/NSE_project/saveas 300_generate_quarto_file.R
---
  ####  Functions to generate a quarto file

  heading  <- function(){
      paste0("---\n", "title:\n", "---\n")
  }

  four_colons <- function(class = NULL) {
    if (is.null(class)) {
    return("::::")
    } else {
    return(paste0("::::", "{", class, "}"))
    }
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
     
