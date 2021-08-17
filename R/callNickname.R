#` Version nickname system.
#'
#' Redirect version nickname based on 10-chenkan, 12-zodiac system.
#' @name callNickname
#' @author Byungju Kim (bjk@inu.ac.kr)
#' @param x version
#' @param y subversion
#' @examples
#' BKversion(1,1)
#' @export
callNickname <- function(x=0,y=0)
{
  x <- x+1
  y <- y+1
  chenkan<-c("jia","yi","bing","ding","wu","ji","geng","xin","ren","gui")
  zodiac<-c("zi","chou","yin","mao","chen","si","wu","wei","shen","you","xu","hai")
  return(paste(chenkan[x],zodiac[y]," "))
}
