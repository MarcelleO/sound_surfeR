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

#Create a function that demeans to remove DC offset and clean audio ----
#' @title demean
#' @description This function allows the user to remove DC offset
#' @param signal extracted from wave object
#' @keywords wave, signal, DC offset
#' @export # makes the function available for others to use when your package is loaded
demean <- function(x){x-mean(x)}
#' @examples # sample code
