#` simple Exploratory data analysis on data matrix
#'
#' show df's mossing ratio, number of variables and column types..
#'
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x a data.frame or tibble object.
#' @param desc column description file (under-development)
#' @param n_var choice of one-hot encoding or additive model.
#' @import tidyverse
#' @examples
#' gauge(billboard)
#' @export
gauge <-function(x,desc,n_var=7,show_freq=F) {

  nColumn <- dim(x)[2]
  nRow    <- dim(x)[1]
  K<-tibble(columns=colnames(x),col_type=sapply(x,class))
  K2<-sapply(x,BKtbl)
  K3<-lapply(K2,length)
  K4<-lapply(x,is.na)
  K4<-lapply(K4,sum)
  K5<-lapply(x, function(x) {x %in% c(0,1,NA)})
  K5<-lapply(K5, sum)
  if(isFALSE(show_freq)) {
  K<-K %>% mutate(n_uniq_Val=unlist(K3),nMISS=unlist(K4),nLogic=unlist(K5)) %>%
    mutate(col_type=case_when(nLogic==nRow  ~ "logic",
                              n_uniq_Val<=n_var      ~ "factor",
                              TRUE          ~ col_type)) %>% select(-nLogic)
  } else {
    K<-K %>% mutate(n_uniq_Val=unlist(K3),nMISS=unlist(K4),fMISS=unlist(K4)/nRow,nLogic=unlist(K5)) %>%
      mutate(col_type=case_when(nLogic==nRow      ~ "logic",
                                n_uniq_Val<=n_var ~ "factor",
                                TRUE              ~ col_type)) %>% select(-nLogic)
  }

  ##Desc<-setRefClass("gauge",fields=list(df_dimension="numeric",df_summary="tbl_df"))


  Desc<-list(dimension=list(n_column=nColumn,n_row=nRow),
             df_summary=K,
             col_type_string=paste(substr(K$col_type,1,1),collapse="")
             #factor_summary=,
             #numeric_summary=,
             )

  return(Desc)
}



