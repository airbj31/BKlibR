#` Interactive Exploratory data analysis on data.
#'
#' show df's missing ratio, number of variables and column types..
#' @name daviz
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param data a data.frame or tibble object.
#' @param meta a data.frame of tibble object for meta data.
#' @param ... various ~~~~.
#' @import tidyverse
#' @import shiny
#' @import shiny.react
#' @import shiny.fluent
#' @examples
#' daviz(mtcars,mtcars)
#' @export
daviz <- function(meta,data, ...) {

  ## basic parameter for version control
  software   <- "DaViz"
  version    <- 0
  subversion <- 0
  URL        <-
  AUTHOR     <- "Kim, Byungju Ph.D"
  title      <- "Daviz"

  ## make header
  header <- tagList(
    #img(src = "appsilon-logo.png", class = "logo"),
    div(Text(variant = "xLarge", paste0("DaViz v",version,".",subversion), class = "title"),
        CommandBar(
          items = list(
            CommandBarItem("Data", "Add", subitems = list(
              CommandBarItem("Add custom data", "Upload"),
              CommandBarItem("New Data", "FabricDataConnectionLibrary", key = "calendarEvent")
            )),
            CommandBarItem("Upload sales plan", "Upload"),
            CommandBarItem("Share analysis", "Share"),
            CommandBarItem("Download report", "Download")
          ),
          farItems = list(
            CommandBarItem("Grid view", "Tiles", iconOnly = TRUE),
            CommandBarItem("Info", "Info", iconOnly = TRUE),
            CommandBarItem("Contacts", "mail", href = "mailto:bjk@inu.ac.kr")
          ),
          style = list(width = "100%")))
  )

  ##header <- paste0("Data visualization on ",data)
  navigation <- "navigation"
  footer <- "footer"

  layout <- function(mainUI){
    div(class = "grid-container",
        div(class = "header", header)
        # div(class = "sidenav", navigation),
        #div(class = "main", mainUI),
        #div(class = "footer", footer)
    )
  }


  ui <-fluidPage(
    h2("hello"),
    layout(),
    #buildFooter()
    daviz_version(title="DaViz",ver=version,subv=subversion)
  )

  server <- function(input,output) {

  }

  shinyApp(ui,server)
}

