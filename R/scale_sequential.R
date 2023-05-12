#' Sequential Colour Palettes
#'
#' Return the SCW sequential colour palettes.
#'
#' @param palette Palette type.
#' Currently there are two sequential colour palettes available:
#' \code{"blue_mono"} (a 9-colour blue monochromatic palette) and
#' \code{"blue_green"} (a 9-colour blue-to-green sequential palette that starts
#' with SCW Dark Blue).
#'
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#'
#' @export pal_sequential
#'
#' @importFrom grDevices col2rgb rgb
#' @importFrom scales manual_pal
#'
#' @examples
#' library("scales")
#' show_col(pal_sequential("blue_mono")(9))
#' show_col(pal_sequential("blue_green", alpha = 0.7)(9))
pal_sequential <-
  function(palette = c("blue_mono", "blue_green"), alpha = 1) {
    palette <- match.arg(palette)

    if (alpha > 1L || alpha <= 0L) stop("alpha must be in (0, 1]")

    raw_cols <- scwplot::palettes$"sequential"[[palette]]
    raw_cols_rgb <- col2rgb(raw_cols)
    alpha_cols <- rgb(
      raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
      alpha = alpha * 255L, names = names(raw_cols),
      maxColorValue = 255L
    )
    scales::manual_pal(unname(alpha_cols))
  }

#' SCW Sequential Colour Palettes
#'
#' See \code{\link{pal_sequential}} for details.
#'
#' @inheritParams pal_sequential
#' @param discrete data Whether data the palette is being applied to is discrete
#'  or continuous.
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_colour_sequential
#'
#' @importFrom ggplot2 discrete_scale
#'
#' @rdname scale_sequential
#'
scale_colour_sequential <-
  function(palette = c("blue_mono", "blue_green"),
           discrete = FALSE, alpha = 1, ...) {
    palette <- match.arg(palette)

    if (discrete) {
      discrete_scale(
        "colour", "sequential",
        pal_sequential(palette, alpha), ...
      )
    } else {
      ggplot2::scale_colour_gradientn(
        "colour", "sequential",
        palette = pal_sequential(palette, alpha),
        colours = 256, ...
      )
    }
  }

#' @export scale_colour_sequential
#' @rdname scale_sequential
scale_color_sequential <- scale_colour_sequential

#' @export scale_fill_sequential
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_sequential
scale_fill_sequential <-
  function(palette = c("blue_mono", "blue_green"),
           discrete = TRUE,
           alpha = 1, ...) {
    palette <- match.arg(palette)
    if (discrete) {
      discrete_scale(
        "fill", "sequential",
        pal_sequential(palette, alpha), ...
      )
    } else {
      ggplot2::scale_colour_gradientn(
        "fill", "sequential",
        palette = pal_sequential(palette, alpha),
        colours = 256, ...
      )
    }
  }
