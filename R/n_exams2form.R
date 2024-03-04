#' Generate Text for Quarto with Exams2webexercises
#'
#' This function generates text for Quarto with Exams2webexercises.
#'
#' @param file_path .
#' @param n An integer specifying the number of questions to generate.
#' @return A character vector of lines to be used within Quarto.
#' @export
#' @examples
#' \dontrun{
#' n_exams2form(c("example_exam1.Rmd", "example_exam2.Rmd"), 5)
#' }
n_exams2form <- function(file_path, n) {
  library("exams2webexercises")
  cat("::: {.webex-group}\n")
  cat("<button class=webex-next-question-button>Next Question</button>\n")

  
  for (i in 0:(n-1)) {
    cat("::: {.webex-question}\n")
    exams2webexercises(file_path)
    cat(":::\n")
  }
  
  cat(":::\n")
}