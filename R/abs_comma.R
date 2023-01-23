#' @export
abs_comma <-
  function (x,
            ...) {format(abs(x),
                         ...,
                         big.mark = ",",
                         scientific = FALSE,
                         trim = TRUE)}
