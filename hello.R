# Automatic Acoustic Template Matching
#
# This rscript contains functions we created for our soundsurfeR package.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#Create a function that reads in .wav files
#' @title read_file
#' @description This function allows the user to read in the file data
#' @param file
#' @keywords file, read-in
#' @export # makes the function available for others to use when your package is loaded
read_file <- function(sonic.f){
  #require(readr)
  data <-readr::read_csv(sonic.f, col_names = TRUE)
  return(data)
}
#' @examples # sample code
