#' Format numbers to add commas to thousands
#'
#' @param x A list of numbers to be formatted
#' @param ... Any additional arguments
#' @return A formatted list of numbers

#' @keywords add_commas
#' @examples
#' x <- c(1000, 10000, 20000, 100, 4000)
#' add_commas(x)
#' @export

add_commas <-
  function(x, ...) {
    format(x, ..., big.mark = ",", scientific = FALSE, trim = TRUE)
  }
