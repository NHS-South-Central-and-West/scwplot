#' Generate Colour Palette
#'
#' Create a palette, from the supplied colour values, either selecting `n`
#' evenly spaced colours from the colour values, if `discrete = TRUE`, or an
#' interpolated palette over the full length of the colour values.
#'
#' @param values Colour values
#' @param discrete Is the palette being fitted to discrete or continuous data?
#' The default, FALSE, interpolates a continuous colour palette from the
#' supplied colour values, and TRUE selects `n` evenly spaced colours from the
#' supplied colour values.
#'
#' @export pal_ramp
#'
pal_ramp <- function(values, discrete = FALSE) {
  force(values)
  function(n) {
    if (discrete) {
      values[seq(from = 1, to = 9, length.out = n)]
    } else {
      grDevices::colorRampPalette(values, alpha = TRUE)(n)
    }
  }
}
