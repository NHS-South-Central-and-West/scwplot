#' Diverging Colour Palettes
#'
#' Return the SCW diverging colour palettes.
#'
#' @param palette Palette type.
#' Currently there are three diverging colour palettes available:
#' \code{"blue_green"} (a 9-colour blue-grey-green palette using NHS Blue, NHS
#' Pale Grey, and NHS Aqua Green), \code{blue_yellow_red} (a 9-colour
#' blue-yellow-red palette using NHS Blue and NHS Pale Grey), and
#' \code{blue_red} (a 9-colour blue-to-red palette uses NHS Blue and NHS Pale
#' Grey).
#'
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#'
#' @export pal_diverging
#'
#' @importFrom grDevices col2rgb rgb
#' @importFrom scales manual_pal
#'
#' @examples
#' library("scales")
#' show_col(pal_diverging("blue_green")(9))
#' show_col(pal_diverging("blue_yellow_red")(9))
#' show_col(pal_diverging("blue_red", alpha = 0.7)(9))
pal_diverging <-
  function(palette = c(
             "blue_green",
             "blue_yellow_red",
             "blue_red"
           ),
           alpha = 1) {
    palette <- match.arg(palette)

    if (alpha > 1L || alpha <= 0L) stop("alpha must be in (0, 1]")

    raw_cols <- scwplot::palettes$"diverging"[[palette]]
    raw_cols_rgb <- col2rgb(raw_cols)
    alpha_cols <- rgb(
      raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
      alpha = alpha * 255L, names = names(raw_cols),
      maxColorValue = 255L
    )
    scales::manual_pal(unname(alpha_cols))
  }

#' SCW diverging Colour Palettes
#'
#' See \code{\link{pal_diverging}} for details.
#'
#' @inheritParams pal_diverging
#' @param discrete data Whether data the palette is being applied to is discrete
#'  or continuous.
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_colour_diverging
#'
#' @importFrom ggplot2 discrete_scale
#'
#' @rdname scale_diverging
#'
scale_colour_diverging <-
  function(palette = c("blue_green", "blue_yellow_red", "blue_red"),
           discrete = FALSE, alpha = 1, ...) {
    palette <- match.arg(palette)

    if (discrete) {
      discrete_scale(
        "colour", "diverging",
        pal_diverging(palette, alpha), ...
      )
    } else {
      ggplot2::scale_colour_gradientn(
        "colour", "diverging",
        palette = pal_diverging(palette, alpha),
        colours = 256, ...
      )
    }
  }

#' @export scale_colour_diverging
#' @rdname scale_diverging
scale_color_diverging <- scale_colour_diverging

#' @export scale_fill_diverging
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_diverging
scale_fill_diverging <-
  function(palette = c("blue_green", "blue_yellow_red", "blue_red"),
           alpha = 1, ...) {
    palette <- match.arg(palette)
    discrete_scale("fill", "diverging", pal_diverging(palette, alpha), ...)
  }
