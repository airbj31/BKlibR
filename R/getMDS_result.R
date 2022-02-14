#' Classical (Metric) Multidimensional Scaling
#'
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x dist or matrix object
#' @param k number of output dimensions.
#' @param eig a logical value (T/F) which print eigenvalue or not.
#' @examples
#' getMDS_result(iris[,1:4],k=2)
#' @export


getMDS_result <-function(x,k=5) {
  # x : distance matrix
  # k : output dimension

  if(class(x)=="matrix") {
    if(dim(x)[1]==dim(x)[2]) {x <-as.dist(x)}
    else {x <-dist(x)}
  }
  mds<-cmdscale(df,eig=T,k)
  samples<-row.names(mds$points)
  TBL<-mds$points %>% as_tibble()
  colnames(TBL)<-paste0("dim",1:k)

  TBL$Taxid<-samples
  TBL<-TBL %>% select(Taxid,paste0("dim",1:5))
  result$result$points     <- TBL
  result$eigenvalue <- tibble(PC=1:length(samples), eigenvalue=mds$eig,cum_eval=cumsum(mds$eig)/sum(mds$eig)) %>% dplyr::filter(PC<=20)
  return(result)
}
