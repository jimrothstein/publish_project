---
title:  "0399A_yaml_utils.R"
date:   "some date" 
TAGS:  yaml,tags,lapply examples
---





###  PURPOSE:   From all *.R, *.RMD files in a folder, extract `TAGS:`, a yaml
  ###  header and put into database

### REF
# from bookdown::   file=utils.R


# match top and bottom '---'
# grep returns int vector indices
# USAGE:   x  <-  c('---', 'a;lkdjf;asl ' , '999', 'af---', '---')
# match_dashes(x)
x  <-  c('---', 'a;lkdjf;asl ' , '999', 'af---', '---'
match_dashes = function(x) grep('^---\\s*$', x)


# return everything betwee --- inclusive, char vector
fetch_yaml = function(x) {
  i = match_dashes(x)
  if (length(i) >= 2) x[(i[1]):(i[2])]
}

g  <- function() { return() }


#'  @title get_RMD_files
#'
#'  @description  Given a path and pattern, return char vector of file names.
#'  Ignores files that begin with '_'
#'  @param path  Directory to query. 
#'  @param pattern regex pattern to match files 
#'  @return 
#'  @export
   get_RMD_files  <- function (path = ".", pattern = NULL, recursive = FALSE) {
     files  <- list.files(path  =  path, pattern = pattern, recursive = recursive)

     # exclude files begin with _
     files  <- files[!grepl('^_', basename(files)) | 
                     !grepl('^_index[.]', basename(files)) ]
   }


### BETGIN HERE:    clean up yaml header before proceeding
#'  @title fetch_yaml_header
#'  @description  Actual work:  Given a file name, return yaml header as
#'  character vector, one element per line.
#'  @param f name of file
#'  @return 
#'  @export
  fetch_yaml_header  <- function(f) {
#  returns character vector of  between `---` inclusive, for file f 
      yaml  <-   bookdown:::fetch_yaml(read_utf8(f))
      list(file=f, header=yaml)
}


#'  @title get_tags_line
  #'
#'  @description Given a yaml header (everything between `---` inclusive),
#'  return the line begins with `TAGS:` 
#'  @param yaml char vector with each element of one line of yaml header
#'  @keywords yaml
#'  @return 
#'  @export
 get_TAGS_line  <- function (header = null) {
   file  <- header$f
   yaml   <- header$header
   if (length(yaml) == 0 ) return()

 # drop the elements with `---`
  yaml = yaml[-c(1, length(yaml))]

  # returns a NULL
  if (length(yaml) == 0) return()

  line  <- grep("^TAGS:", yaml)

  if (length(line) == 0) return()
  list(file = file, 
       date = format(Sys.Date(), "%Y_%m_%d"), 
       TAGS = yaml[line])
  # yaml[line]
 }



#'  @title remove_null
#  Given a list, return list (subset) without null entries
#  fals for lapply, why?
remove_null  <- function (l = NULL) {
  l[!sapply(l, is.null)]
  ### STUDY
  ###
## NOTE:
# removes outter most 'list', leaving just the elment (in this case, a list)
# lines[[1]]
# unlist(lines)
}



# FOR REAL
# ==========
#   USE   ,rd  setwd("~/code/publish_project/rmd/")
library(microbenchmark)

res  <- microbenchmark(NULL, {
rmd_pattern  <- '[.][Rr](md|markdown)$'
md_pattern  <- '[.][Rr]?(md|markdown)$'

files  <- get_RMD_files(path = ".", pattern = rmd_pattern)
files

# list:   each element is list $f=  $header = 
headers  <- lapply(files, fetch_yaml_header)
headers

# list of TAG_line s
# lines looks like:   list( list(x= .., date=...), list2(x= ..., date= ..)
# ....listn(x= ..., date= ...))
lines <- lapply(headers, get_TAGS_line)
lines


# remove NULL lines
# list, each element has $f $date $TAGS,  none are NULL
lines  <- remove_null(lines)
lines



})

# we now have list, 1 entry for every file, file, date + TAGS line
lines

# But we want to create vectors, specifically columns in df
#
#  list
lapply(lines, function(e) e$file)

# ah, now as vector!
files  <- sapply(lines, function(e) e$file)
files


dates  <- sapply(lines, function(e) e$date)
dates

TAGS  <- sapply(lines, function(e) e$TAGS)
TAGS

#
## CONTINUE TO save tags
##
##
## TODO (res)
##
library(data.table)
dt  <- data.table(file = files,
                  date = dates,
                  TAGS = TAGS)
dt

file_name  <- paste0("TAGS_", format(Sys.Date(), "%d%b%Y"))
file_name

saveRDS(dt, file_name)
readRDS(file_name)

## TO DO 
l  <- list(a="jim", b="joe", c="cindi")

names  <- names(l)
names

tags  <- vapply(l, `[`, character(1), USE.NAMES=FALSE)
tags

