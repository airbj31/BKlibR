#' convert Decimal numners to each of base 'n' system.
#'
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x a vector of decimal numeric values
#' @param base a base number which you want to convert to
#' @param format a logical value (T/F) which formating leading zero based on most long number.
#' @examples
#' dec2base(1:10,3,T)
#' @export
dec2base <-function(x,base,format=T) {
  Q<-as.numeric(x)
  n<-0
  while( sum(Q) > 0 )
  {
    R <- Q %% base
    Q <- Q %/% base
    if(n ==0 ) {cNum <- R * 10^n}
    else {cNum <- cNum + R * 10^n}
    n<-n+1
  }
  if(format==T) {return(formatC(cNum, width= n, flag="0"))}
  else {return(cNum)}
}

