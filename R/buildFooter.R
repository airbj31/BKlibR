#' footer builder for DaViz App.
#'
#' show df's missing ratio, number of variables and column types..
#' @name buildFooter
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x version
#' @param y subversion
#' @param URL various ~~~~.
#' @import tidyverse
#' @import shiny
#' @examples
#' buildFooter(billboard)
#' @export

buildFooter<-function(title="Data Visualization App",version=1,subversion=1,URL) {

  quote<-c("The purpose of visualization is insight, not pictures.―Ben Shneiderman",
           "Above all else show the data. ―Edward Tufte",
           "The goal is to turn data into information, and information into insight. ―Carly Fiorina",
           "The greatest value of a picture is when it forces us to notice what we never expected to see. -John Tukey",
           "Losers visualize the penalties of failure. Winners visualize the rewards of success.")

  return(tagList(
    div(
      div(h6(quote[sample(5)[1]],
             style="color: #EFB142;"),style="margin-top: 10px"),
      hr(width="20%",style="border-top: 1px dotted #FFFFFF;margin: 5px 5px 15px 5px;"),
      img(src="http://www.inu.ac.kr/mbshome/mbs/inu/images/0805_logoImg3.jpg",align="center",width=100),
      h5("INCHEON NATIONAL UNIVERSITY",br(),"Human Genome Research Center",style="color: #FFFFFF;"),
      tags$i(class = "fa fa-home", style = "font-size:18px;color: #FFFFFF"),span(" "),
      tags$i(class = "fa fa-facebook", style = "font-size:18px;color: #FFFFFF"),span(" "),
      tags$i(class = "fa fa-twitter", style = "font-size:18px;color: #FFFFFF"),span(" "),
      tags$i(class = "fa fa-instagram", style = "font-size:18px;color: #FFFFFF"),
      h6(title," version ",version,".",subversion," ",BKversion(version,subversion),"     For help: ",BKurl,br(),
         " © 2020 KIM, BYUNGJU PhD.     GNU General Public License v3.",style="color: #FFFFFF;"),
      align="center",
      style="background-color:#124B98;
          position: fixed;
          position: -webkit-sticky;
          position: sticky;
          bottom: 0;left: 0;right: 0;height: 270px; "
    )
  ))
}
