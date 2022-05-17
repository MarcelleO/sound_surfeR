# Automatic Acoustic Template Matching
#
# This rscript contains the functions we created for our soundsurfeR
# package.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#Createing a function that demeans to remove DC offset and clean audio ----
#' @title demean
#' @description This function allows the user to remove DC offset
#' @param signal extracted from wave object
#' @keywords wave, signal, DC offset, punny
#' @export # makes the function available for others to use when your package is loaded
demean <- function(x){x-mean(x)}
#' @examples # sample code

# function to clean audio for further analysis and visualization----








#Createing a function that conducts spectrograph binary matchpoint analysis----
#' @title bma
#' @description This function allows the user to go through the entire analysis of binary match point using a single line of code
#' @param class wave object
#' @param class binTemplateList , object created by combining a list of binary templates
#' @keywords wave, binary, matching, template
#' @export # makes the function available for others to use when your package is loaded
bma <- function(wav_file, tempbin){
  class(wav_file) == "wave"
  class(tempbin) == "binTemplateList"
  #require monitoR
  bscores <- binMatch(wav_file, tempbin, warn = FALSE)
  bdetects <- findPeaks(bscores)
  scores <- getDetections(bdetects)
  return(scores)}
#' @examples # sample code

# function to optimize workflow for binary matchpoint analysis----






#Creating a function that conducts spectrograph cross correlation template analysis----
#' @title cma
#' @description This function allows the user to go through the entire process cross correlation template analysis using a single line of code
#' @param class wave object
#' @param class corTemplateList , object created by combining a list of binary templates
#' @keywords wave, cross, correlation, matching, template
#' @export # makes the function available for others to use when your package is loaded
cma <- function(wav_file, tempcor){
  class(wav_file) == "wave"
  class(tempcor) == "CorTemplateList"
  #require monitoR
  cscores <- corMatch(wav_file, tempcor, warn = FALSE)
  cdetects <- findPeaks(cscores)
  scores <- getDetections(cdetects)
  return(scores)}
#' @examples # sample code

# function to optimize workflow for cross correlation template analysis----

