#' require package quietly
#'
#' wrapper function for require
#' @param pkg packages of interests.
#' @examples
#' Q.Require("tidyverse")
#' @export
Q.Require<-function(pkg)
{
  require(pkg,warn.conflicts = F,quietly=T,character.only = TRUE)
}

#' load package quietly
#'
#' wrapper function for library
#' @param pkg packages of interests.
#' @examples
#' Q.library("tidyverse")
#' @export
Q.library<-function(pkg)
{
  library(pkg,warn.conflicts = F,quietly=T,character.only = TRUE)
}

#' install and load multiple packages
#'
#' if installation is necessary, do installation first from cran and then load all the packages queitly.
#' @param pkgs vector of packages interested. if installation is necessary, do installation first from cran.
#' @export
request<-function(pkgs) {
  newpkgs<-pkgs[!(pkgs %in% installed.packages()[,"Package"])]
  if(length(newpkgs)>0) {install.packages(newpkgs)}
  invisible(sapply(pkgs,Q.library,character.only=T))

}


#' check the package installation
#'
#' check if the package is installed
#' @param mypkg character vector of package names interested.
#' @examples
#' is.installed("tidyverse")
#' @export
is.installed <- function(pkg){
  is.element(pkg, installed.packages()[,1])
}
