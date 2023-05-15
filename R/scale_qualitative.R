#' Qualitative Colour Palettes
#'
#' Return the SCW qualitative colour palettes.
#'
#' @param palette Palette type.
#' Currently there is only one qualitative colour palette available:
#' \code{"default"} (a 5-colour qualitative palette that includes NHS Blue,
#' NHS Warm Yellow, and SCW Dark Blue).
#'
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#'
#' @export pal_qualitative
#'
#' @examples
#' scales::show_col(pal_qualitative("default")(5))
pal_qualitative <- function(palette = c("default"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L || alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- scwplot::palettes$"qualitative"[[palette]]
  raw_cols_rgb <- grDevices::col2rgb(raw_cols)
  alpha_cols <- grDevices::rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  scales::manual_pal(unname(alpha_cols))
}

#' SCW Qualitative Colour Palettes
#'
#' See \code{\link{pal_qualitative}} for details.
#'
#' @inheritParams pal_qualitative
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_colour_qualitative
#'
#' @rdname scale_qualitative
#'
scale_colour_qualitative <-
  function(palette = c("default"), alpha = 1, ...) {
    palette <- match.arg(palette)
    ggplot2::discrete_scale(
      "colour", "qualitative",
      pal_qualitative(palette, alpha), ...
    )
  }

#' @export scale_colour_qualitative
#' @rdname scale_qualitative
scale_color_qualitative <- scale_colour_qualitative

#' @export scale_fill_qualitative
#'
#' @rdname scale_qualitative
#'
scale_fill_qualitative <-
  function(palette = c("default"), alpha = 1, ...) {
    palette <- match.arg(palette)
    ggplot2::discrete_scale(
      "fill", "qualitative",
      pal_qualitative(palette, alpha), ...
    )
  }
