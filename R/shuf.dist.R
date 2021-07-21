#' Random shuffling of distance matrix.
#'
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x a dist object.
#' @param seed seed used to generate random sampling order.
#' @examples
#' shuf.dist(x,seed=1234)
#' @export

shuf.dist <-function(x,seed=716018) {
  set.seed(seed)
  ncol <- dim(as.matrix(x))[1]
  shuf.index<-sample(ncol,ncol)
  return(as.dist(as.matrix(x)[shuf.index,shuf.index]))
}
