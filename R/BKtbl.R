#` Table extension for list.
#'
#' base R's `table` extension which can receive `list` type
#'
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x vector, and list objects.
#' @examples
#' BKtbl(billboard)
#' @export
BKtbl <- function(x,...)
{
  if(class(x)=="list") {return(table(unlist(x)))}
  else {return(table(x))}
}
