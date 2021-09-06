#' create various PCA graphes
#'
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x vector, and list objects.
#' @import plotly
#' @examples
#' BKtbl(billboard)
#' @export
plot_evec <- function(evec,axis,color,shape,colors,shapes) {
  ## read axis var to determine 2d or 3d plot.
}

#' eigenvalue plot including % cumulative eigenvalue
#'
#' @examples
#' PCA<-prcomp(iris[,1:4])
#' plot_eval(PCA$sdev^2,3)
#' @export
plot_eval <- function(eval,PCs) {

  if(is.na(PCs)) {PCs<-length(eval) }
  n<-length(eval)
  df <- tibble(PC=1:n,eigenvalue=eval)
  df <- df %>% mutate(fcumsum= cumsum(eigenvalue)/sum(eigenvalue))
  df <- df %>% head(PCs)
  df %>% ggplot(aes(PC,eigenvalue))  + geom_point() + geom_line() +
    hrbrthemes::theme_ipsum(axis_title_size=16,axis_title_just="cm") +
    geom_line(data=df, aes(PC,fcumsum * eigenvalue[1] ),color="red") +
    geom_point(data=df, aes(PC,fcumsum * eigenvalue[1] ),color="red") +
    scale_y_continuous(sec.axis = sec_axis(~ . *100/ df$eigenvalue[1] ,name="Cumulative eigenvalue (%)")) +
    theme(
      panel.border = element_rect(color="black",fill=NA),
      axis.line.y.right   = element_line(color="red"),                                                                                                                                                                    axis.title.y.right  = element_text(color="red"),
      axis.text.y.right  = element_text(color="red"),
      axis.ticks.y.right  = element_line(color="red"),
      axis.ticks.y.left  = element_line(color="black"),
      axis.ticks.x.bottom  = element_line(color="black"),
      axis.line.y.left   = element_line(color="black")
    )
}
