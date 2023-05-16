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

#' Sequential Colour Palettes
#'
#' Return the SCW sequential colour palettes.
#'
#' @param palette Currently there are two sequential colour palettes available:
#' \code{"blue_mono"} (a 9-colour blue monochromatic palette) and
#' \code{"blue_green"} (a 9-colour blue-to-green sequential palette that starts
#' with SCW Dark Blue).
#'
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#'
#' @param reverse The default, FALSE, generates the colour palette as defined,
#' while TRUE generates the colour palette in reverse order.
#'
#' @export pal_sequential
#'
#' @examples
#' scales::show_col(pal_sequential(palette = "blue_mono")(9))
#' scales::show_col(pal_sequential(palette = "blue_green", alpha = 0.7)(9))
#' scales::show_col(pal_sequential(palette = "blue_green", reverse = TRUE)(9))
pal_sequential <- function(palette = c("blue_mono", "blue_green"),
                           alpha = 1, reverse = FALSE) {
  palette <- match.arg(palette)

  if (alpha > 1L || alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- if (reverse) {
    rev(scwplot::palettes$"sequential"[[palette]])
  } else {
    scwplot::palettes$"sequential"[[palette]]
  }

  raw_cols_rgb <- grDevices::col2rgb(raw_cols)
  alpha_cols <- grDevices::rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  pal_ramp(unname(alpha_cols))
}

#' SCW Sequential Colour Palettes
#'
#' See \code{\link{pal_sequential}} for details.
#'
#' @inheritParams pal_sequential
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams ggplot2::continuous_scale
#' @param discrete data Whether data the palette is being applied to is discrete
#'  or continuous.
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_colour_sequential
#'
#' @rdname scale_sequential
#'
scale_colour_sequential <-
  function(..., alpha = 1, reverse = TRUE, discrete = FALSE,
           palette = c("blue_mono", "blue_green")) {
    palette <- match.arg(palette)

    if (discrete) {
      ggplot2::discrete_scale(
        "colour", "sequential",
        pal_sequential(palette, alpha, reverse),
        ...
      )
    } else {
      ggplot2::continuous_scale(
        "colour", "sequential",
        scales::gradient_n_pal(pal_sequential(palette, alpha, reverse)(9)),
        na.value = "grey50", guide = "colourbar", ...
      )
    }
  }

#' @export scale_colour_sequential
#' @rdname scale_sequential
scale_color_sequential <- scale_colour_sequential

#' @export scale_fill_sequential
#'
#' @rdname scale_sequential
scale_fill_sequential <-
  function(..., alpha = 1, reverse = TRUE, discrete = FALSE,
           palette = c("blue_mono", "blue_green")) {
    palette <- match.arg(palette)

    if (discrete) {
      ggplot2::discrete_scale(
        "fill", "sequential",
        pal_sequential(palette, alpha, reverse),
        ...
      )
    } else {
      ggplot2::continuous_scale(
        "fill", "sequential",
        scales::gradient_n_pal(pal_sequential(palette, alpha, reverse)(9)),
        na.value = "grey50", guide = "colourbar", ...
      )
    }
  }
