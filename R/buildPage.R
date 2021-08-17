#' Page builder for Shiny App with Appsilon's Shiny fluent.
#'
#'
#' @name buildPage
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x version
#' @param y subversion
#' @param URL various ~~~~.
#' @import tidyverse
#' @import shiny
#' @examples
#' describe_df(billboard)
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
