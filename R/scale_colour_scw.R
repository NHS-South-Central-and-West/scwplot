#' Colour scale constructor for SCW theme colours
#'
#' @param palette Character name of palette in SCW theme
#' @param discrete Boolean indicating whether colour aesthetic is discrete or
#' not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#' scale_colour_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @importFrom ggplot2 discrete_scale scale_colour_gradientn
#' @export

scale_colour_scw <- function(palette = "seq", discrete = TRUE,
                             reverse = FALSE, ...) {
  pal <- scw_palette(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", palette = pal, ...)
  } else {
    scale_colour_gradientn(colours = pal(256), ...)
  }
}
