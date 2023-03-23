#' @export
add_commas <-
  function (x,
            ...) {format(x,
                         ...,
                         big.mark = ",",
                         scientific = FALSE,
                         trim = TRUE)}
