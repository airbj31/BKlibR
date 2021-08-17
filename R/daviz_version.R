#` Interactive Exploratory data analysis on data.
#'
#' show df's missing ratio, number of variables and column types..
#' @name daviz_version
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param title software title, "DaViz".
#' @param version official version.
#' @param subversion official subversion.
#' @param AUTHOR author of the program.
#' @param url url for the software
#' @examples
#' daviz_version()
#' @export
#'
daviz_version <- function(title="DaViz",ver=version,subv=subversion,AUTHOR="KIM, BYUNGJU PhD.",url="https://byungju-kim.github.io/DaViz/") {
  github_pg <- "https://byungju-kim.github.io/DaViz/"
  message(title," ","v",ver,".",subv,"-",callNickname(ver,subv)," © 2020 ",AUTHOR," GNU General Public License v3. ",url,"\n",
          "Everyone is permitted to copy and distribute verbatim copies of this license document, but changing it is not allowed.")
}
