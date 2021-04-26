
# 0399_yaml_utils.R
#




# from bookdown::   file=utils.R

# REMOVE
library(blogdown)
library(bookdown)
library(yaml)


# match top and bottom '---'
# grep returns int vector indices
# USAGE:   x  <-  c('---', 'a;lkdjf;asl ' , '999', 'af---', '---')
# match_dashes(x)
#

x  <-  c('---', 'a;lkdjf;asl ' , '999', 'af---', '---')
match_dashes = function(x) grep('^---\\s*$', x)


# return everything betwee --- inclusive, char vector
fetch_yaml = function(x) {
  i = match_dashes(x)
  if (length(i) >= 2) x[(i[1]):(i[2])]
}

#  read file, 
#  read_utf8(f)
#


## change the default of full.names and recursive in list.files() because these
# values are used much more frequently than the original defaults
# Other list.files params
# @params path defualt is "."
# @params pattern default is NULL
# @params include.dirs default is FALSE
#
#
#
#  returns character vector of tags between `---` inclusive, for file f 
fetch_yaml  <- function(f) {
  bookdown:::fetch_yaml(read_utf8(f))
}

list_files = function(..., full.names = TRUE, recursive = TRUE) {
  list.files(..., full.names = full.names, recursive = recursive, no.. = TRUE)
}
  rmd_pattern  <- '[.][Rr](md|markdown)$'
  md_pattern  <- '[.][Rr]?(md|markdown)$'




# blogdown::render.R   includes list_rmds()
  #
  #
  #
#    @param full.names defaul is FALSE and reason for names like "./0300yaml.R"
#    @return files character vector
  list_rmds = function(dir = ".", pattern = NULL, check = FALSE) {
      files = list.files(dir, pattern, recursive = TRUE, full.names = TRUE)
      # exclude Rmd that starts with _ (preserve these names for, e.g., child docs)
      # but include _index.Rmd/.md
      files = files[!grepl('^_', basename(files)) | grepl('^_index[.]', basename(files))]
      # do not allow special characters in filenames so dependency names are more
      # predictable, e.g. foo_files/
      #
      # (jr:  skip \code{check} for now)
      if (check) bookdown:::check_special_chars(files)
}


  # char vector of files
  scan_yaml  <- function(warn = TRUE) {

    files  <- tryCatch(list_rmds(pattern = rmd_pattern), 
                       error = function(e) NULL)

    if (length(files) == 0) return (list())
    files
  }



files  <-   scan_yaml()
files

#   res is list, each elemtn is char vector, one vector for each f
      res  <- lapply(files, function(f) {

                       # yaml is character vector of all lines between ---
                       yaml  <- fetch_yaml(f)
                       if (length(yaml) == 0) return()

                       # drop the elements with `---`
                       yaml = yaml[-c(1, length(yaml))]

                       if (length(yaml) == 0) return()

                       yaml
                       
                       })
# named list
res  <- setNames(res, files)
res
x  <- lapply(res, function(f) {
         # 0 or 1 string for each f
         line  <- grep("^TAGS:", f)
         if (length(line) == 0) return()
         f[line] }
       )

# char vector
TAG_lines  <- unlist(x)
# string


TAG_lines
TAG_line  <- TAG_lines[1]
TAG_line
# list  
x  <- strsplit(TAG_line, split=":")
typeof(x)
length(x)
names(x)
typeof(unlist(x))

# 1st elment of list, its 2nd elemen
x[[1]][[2]]

#  split
  lapply(TAG_lines, strsplit(x,  split=":"))
x
y  <- unlist(x)

z  <- strsplit(y[2], split=",")

tags  <- unlist(z)

tags



library(data.table)
dt  <- data.table(file = file, 
                  date = format(Sys.Date(), 
                               ' %d %B %Y'), 
                  tags = tags[1])
dt

