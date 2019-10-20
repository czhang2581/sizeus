#' Online Shopping Search
#'
#' This function allows the user to search for his or her favorite shoe brand online.
#'
#' Now you have your US shoe size, let's go shopping!
#' @param gender The gender of the user, either male or female, default to female
#' @param brand Input your favorite shoe brand
#' @return Online search result
#' @author Chuze Zhang <\url{https://github.com/QMSS-G5072-2019/Zhang_Chuze}>
#' @export
#' @examples
#' search_shoe('male','Nike')

search_shoe<-function(gender='female',brand=''){

  brand <-trimws(tolower(brand))
  gender <-trimws(tolower(gender))

  searcher::search_google(paste(brand,"shoes",gender), rlang=FALSE)
}
