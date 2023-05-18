#' Sequential Colour Palettes
#'
#' Sequential colour palettes are used to encode numerical information that has
#' a natural order (where data can be ordered from high to low, or vice versa).
#' The use of a sequential palette typically indicates that the importance or
#' significance of values varies in line with the natural order of the data.
#' Values with higher luminance (lighter colours) are generally those that are
#' less important, and values with lower luminance (darker colours) indicates
#' greater importance.
#'
#' @param palette Currently there are four sequential colour palettes available:
#' \code{"blues"} (a 9-colour single-hue NHS Blue palette), \code{"dark_blues"}
#' (a 9-colour single-hue SCW Dark Blue palette), \code{"blue_grey"} (a 9-colour
#'  multi-hue palette that uses SCW Dark Blue and NHS Pale Grey), and
#' \code{"blue_green_yellow"} (a 9-colour multi-hue palette that is generated
#' using NHS Blue, NHS Aqua Green, and NHS Warm Yellow).
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
#' scales::show_col(pal_sequential(palette = "blues")(9))
#' scales::show_col(pal_sequential(palette = "dark_blues")(9))
#' scales::show_col(pal_sequential(palette = "blue_grey")(9))
#' scales::show_col(pal_sequential(palette = "blue_green_yellow")(9))
#' scales::show_col(pal_sequential(palette = "blue_green", alpha = 0.7)(9))
#' scales::show_col(pal_sequential(palette = "blue_green", reverse = TRUE)(9))
pal_sequential <- function(
    palette = c("blues", "dark_blues", "blue_grey", "blue_green_yellow"),
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

  scwplot::pal_ramp(unname(alpha_cols))
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
  function(
      ..., alpha = 1, reverse = TRUE, discrete = FALSE,
      palette = c("blues", "dark_blues", "blue_grey", "blue_green_yellow")) {
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

#' @export scale_fill_sequential
#'
#' @rdname scale_sequential
scale_fill_sequential <-
  function(
      ..., alpha = 1, reverse = TRUE, discrete = FALSE,
      palette = c("blues", "dark_blues", "blue_grey", "blue_green_yellow")) {
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
