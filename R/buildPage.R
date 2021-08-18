#' Page builder for Shiny App with Appsilon's Shiny fluent.
#'
#' shamlessly stolen from Appsilon's tutorial.
#' @name buildPage
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param title title of the page
#' @param subtitle subtitle of the page
#' @param contents various html codes required to build page.
#' @import tidyverse
#' @import shiny
#' @import shiny.fluent
#' @import shiny.react
#' @examples
#' buildPage()
#' @export
buildPage <- function (title, subtitle, contents) {
  tagList(div(
    class = "page-title",
    span(title, class = "ms-fontSize-32 ms-fontWeight-semibold", style =
           "color: #323130"),
    span(subtitle, class = "ms-fontSize-14 ms-fontWeight-regular", style =
           "color: #605E5C; margin: 14px;")
  ),
  contents)
}
