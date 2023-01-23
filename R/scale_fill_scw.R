#' Fill scale constructor for SCW colours
#'
#' @param palette Character name of palette in SCW theme
#' @param discrete Boolean indicating whether colour aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
scale_fill_scw <- function(palette = "scw", discrete = TRUE, reverse = FALSE, ...) {
  pal <- scw_palette(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("nhs_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
