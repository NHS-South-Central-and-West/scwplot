#' @export
add_commas <-
  function (x,
            ...) {format(abs(x),
                         ...,
                         big.mark = ",",
                         scientific = FALSE,
                         trim = TRUE)}
