#' Helper Function
#'
#' This function is a helper function that helps the main function to convert shoe sizes.
#'
#' @param size_input User's UK or EU shoe size
#' @param size_standard UK or EU standard size
#' @param ussize_standard US standard size
#' @return User's US shoe size
#' @author Chuze Zhang <\url{https://github.com/QMSS-G5072-2019/Zhang_Chuze}>
#' @keywords internal

converter <- function(size_input,size_standard, ussize_standard){
  size_input <- as.integer(size_input)
  if (size_input %in% size_standard){
    id<- which(size_standard == size_input)
  }
  else{

    return(0)
  }

  return(ussize_standard[[id]])
}


#' Shoe Size Converter
#'
#' This function is the main function in this package. It allows users to convert their UK or EU shoe sizes to US sizes.
#'
#' @param gender The gender of the user, either male or female, default to female
#' @param country Which sizing standard does the user use, UK or Europe, default to UK
#' @param size User's UK or EU shoe size
#' @return User's US shoe size
#' @author Chuze Zhang <\url{https://github.com/QMSS-G5072-2019/Zhang_Chuze}>
#' @export
#' @examples
#' shoesize('male', 'Euro', 42)
#' shoesize('Female', 'UK', 5)

shoesize<-function(gender="female", country="uk", size = 0){
  gender <-trimws(tolower(gender))
  country <- trimws(tolower(country))
  ussize=0

  if (gender == "female"){
    size_conv = seq(5,12,0.5)

    if (country == 'uk'|| country == "united kingdom"){
      seq_uk = seq(3,10,0.5)
      ussize = converter(size, seq_uk, size_conv)
    }
    if (country== "europe"||country=="eu"||country=="euro"){
      seq_eu = seq(35.5,42.5,0.5)
      ussize = converter(size, seq_eu, size_conv)
    }
  }

  if (gender == "male"){
    size_conv = seq(6,13,0.5)
    if (country == 'uk'|| country == "united kingdom"){
      seq_uk = seq(5.5,12.5,0.5)
      ussize = converter(size, seq_uk, size_conv)
    }
    if (country== "europe"||country=="eu"||country=="euro"){
      seq_eu = c(39,39,40,seq(40.5,45,0.5),46)
      ussize = converter(size, seq_eu, size_conv)
    }
  }

  if (country %in% c("uk","united kingdom","eu","europe","euro")==FALSE){
    return("Sorry, we only support UK and Europe size to US size.")
  }

  if (gender %in% c('male','female')==FALSE){
    return ("Please specify your gender (male/female)")
  }

  if (ussize ==0||size==0){
    return("Sorry, your size input is invalid")
  }

  else{
    return (paste0("Your US shoe size is ",ussize,". Go shopping!"))
  }
}





