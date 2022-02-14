#' Principal Component Analysis
#'
#' prcomp wrapper.
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x dist or matrix object
#' @param k number of output dimensions to print.
#' @param eig a logical value (T/F) which print eigenvalue or not.
#' @param nEig a numeric value
#' @param scale scale variable for prcomp's scale attribute
#' @param center scale variable for prcomp's center attribute
#' @examples
#' getPCA_result(iris[,1:4],k=2)
#' @export
#'
getPCA_result <-function(x,k=5,nEig,center=TRUE,scale=FALSE) {
  # x : distance matrix
  # k : output dimension
  # nEig : number of eigenvalue
  result<-list()
  PCA <- prcomp(x,center=TRUE,scale=F)
  result$eigenvalue  <- tibble(PC=1:length(samples),eigenvalue=PCA$sdev^2,cum_evalue=cumsum(PCA$sdev^2)/sum(PCA$sdev^2)) %>% dplyr::filter(PC<=20)
  result$eigenvector <- PCA$x %>% as_tibble() %>% mutate(Taxid=row.names(df)) %>% select(Taxid,PC1:PC10)
  return(result)
}

