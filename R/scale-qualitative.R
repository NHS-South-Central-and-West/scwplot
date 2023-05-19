#' Qualitative Colour Palettes
#'
#' Qualitative (sometimes called categorical) colour palettes are used to encode
#' categorical information that has no meaningful order. For example, car
#' manufacturers or sports teams, without context that specifically indicates
#' some natural order, would be unordered categories. Qualitative colour
#' palettes should include colours that all have similar "perceptual weights",
#' meaning that each colour is clearly distinguishable from each other, but that
#'  no colour is significantly more distinct than the rest of the palette.
#'
#' @param palette Currently there are three qualitative colour palettes
#' available: \code{"scw"} (a 5-colour palette that includes NHS Blue, NHS
#' Light Blue, and SCW Dark Blue), \code{"nhs"} (a 5-colour palette that
#' includes NHS Dark Blue, NHS Blue, NHS Light Blue, and NHS Mid Grey), and
#' \code{warm} (a 6-colour palette that includes NHS Blue, NHS Warm Yellow,
#' NHS Mid Grey, and SCW Dark Blue).
#'
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#'
#' @export pal_qualitative
#'
#' @examples
#' scales::show_col(pal_qualitative(palette = "nhs")(5))
#' scales::show_col(pal_qualitative(palette = "scw")(5))
#' scales::show_col(pal_qualitative(palette = "warm")(5))
pal_qualitative <- function(palette = c("nhs", "scw", "warm"),
                            alpha = 1) {
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
  function(palette = c("nhs", "scw", "warm"),
           alpha = 1, ...) {
    palette <- match.arg(palette)
    ggplot2::discrete_scale(
      "colour", "qualitative",
      pal_qualitative(palette, alpha), ...
    )
  }

#' @export scale_fill_qualitative
#'
#' @rdname scale_qualitative
#'
scale_fill_qualitative <-
  function(palette = c("nhs", "scw", "warm"),
           alpha = 1, ...) {
    palette <- match.arg(palette)
    ggplot2::discrete_scale(
      "fill", "qualitative",
      pal_qualitative(palette, alpha), ...
    )
  }
