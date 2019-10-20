#' Shoe size Charts
#'
#' This function allows the user to print out a shoe size conversion chart.
#'
#' If you think the function is too good to be true, check it out for youself! Source from \url{https://www.zappos.com/c/shoe-size-conversion}
#' @param gender The gender of the user, either male or female, default to female
#' @return A shoe size chart
#' @author Chuze Zhang <\url{https://github.com/QMSS-G5072-2019/Zhang_Chuze}>
#' @export
#' @examples
#' chart('male')

chart<-function(gender='female'){
  gender <-trimws(tolower(gender))
  if (gender == "male"){
    return(knitr::include_graphics("images/menshoe.png"))
  }
  if (gender == "female"){
    return(knitr::include_graphics("images/womenshoe.png"))
  }
}
