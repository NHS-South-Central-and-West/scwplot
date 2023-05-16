#' Diverging Colour Palettes
#'
#' Return the SCW diverging colour palettes.
#'
#' @param palette Currently there are two diverging colour palettes available:
#' \code{"blue_green"} (a 9-colour blue-grey-green palette using NHS Blue, NHS
#' Pale Grey, and NHS Aqua Green), \code{blue_yellow_red} (a 9-colour
#' blue-yellow-red palette using NHS Blue and NHS Pale Grey), and
#' \code{blue_red} (a 9-colour blue-to-red palette uses NHS Blue and NHS Pale
#' Grey).
#'
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#'
#' @param reverse The default, FALSE, generates the colour palette as defined,
#' while TRUE generates the colour palette in reverse order.
#'
#' @export pal_diverging
#'
#' @examples
#' scales::show_col(pal_diverging(palette = "blue_green")(9))
#' scales::show_col(pal_diverging(palette = "blue_yellow_red", alpha = 0.7)(9))
#' scales::show_col(pal_diverging(palette = "blue_red", reverse = TRUE)(9))
pal_diverging <-
  function(palette = c("blue_green", "blue_yellow_red", "blue_red"),
           alpha = 1, reverse = FALSE) {
  palette <- match.arg(palette)

  if (alpha > 1L || alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- if (reverse) {
    rev(scwplot::palettes$"diverging"[[palette]])
  } else {
    scwplot::palettes$"diverging"[[palette]]
  }

  raw_cols_rgb <- grDevices::col2rgb(raw_cols)
  alpha_cols <- grDevices::rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  pal_ramp(unname(alpha_cols))
}

#' SCW Diverging Colour Palettes
#'
#' See \code{\link{pal_diverging}} for details.
#'
#' @inheritParams pal_diverging
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams ggplot2::continuous_scale
#' @param discrete data Whether data the palette is being applied to is discrete
#'  or continuous.
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_colour_diverging
#'
#' @rdname scale_diverging
#'
scale_colour_diverging <-
  function(..., alpha = 1, reverse = TRUE, discrete = FALSE,
           palette = c("blue_green", "blue_yellow_red", "blue_red")) {
    palette <- match.arg(palette)

    if (discrete) {
      ggplot2::discrete_scale(
        "colour", "diverging",
        pal_diverging(palette, alpha, reverse),
        ...
      )
    } else {
      ggplot2::continuous_scale(
        "colour", "diverging",
        scales::gradient_n_pal(pal_diverging(palette, alpha, reverse)(9)),
        na.value = "grey50", guide = "colourbar", ...
      )
    }
  }

#' @export scale_colour_diverging
#' @rdname scale_diverging
scale_color_diverging <- scale_colour_diverging

#' @export scale_fill_diverging
#'
#' @rdname scale_diverging
scale_fill_diverging <-
  function(..., alpha = 1, reverse = TRUE, discrete = FALSE,
           palette = c("blue_green", "blue_yellow_red", "blue_red")) {
    palette <- match.arg(palette)

    if (discrete) {
      ggplot2::discrete_scale(
        "fill", "diverging",
        pal_diverging(palette, alpha, reverse),
        ...
      )
    } else {
      ggplot2::continuous_scale(
        "fill", "diverging",
        scales::gradient_n_pal(pal_diverging(palette, alpha, reverse)(9)),
        na.value = "grey50", guide = "colourbar", ...
      )
    }
  }
