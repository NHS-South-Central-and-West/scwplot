nhs_colours <- c(
  nhs_white         = "#FFFFFF",
  nhs_dark_blue     = "#003087",
  nhs_blue          = "#005EB8",
  nhs_bright_blue   = "#0072CE",
  nhs_light_blue    = "#41B6E6",
  nhs_aqua_blue     = "#00A9CE",
  nhs_black         = "#231f20",
  nhs_dark_grey     = "#425563",
  nhs_mid_grey      = "#768692",
  nhs_pale_grey     = "#E8EDEE",
  nhs_dark_green    = "#006747",
  nhs_green         = "#009639",
  nhs_light_green   = "#78BE20",
  nhs_aqua_green    = "#00A499",
  nhs_purple        = "#330072",
  nhs_dark_pink     = "#7C2855",
  nhs_pink          = "#AE2573",
  nhs_dark_red      = "#8A1538",
  nhs_orange        = "#ED8B00",
  nhs_warm_yellow   = "#FFB81C",
  nhs_yellow        = "#FAE100",
  scw_dark_blue     = "#1c355e"
)

#' Function to extract NHS colours as hex codes
#'
#' @param ... Character names of NHS colours (e.g. 'nhs_white')
#'
nhs_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols)) {
    return(nhs_colours)
  }

  nhs_colours[cols]
}

scw_palettes <- list(
  nhs =
    nhs_cols(
      "nhs_dark_blue", "nhs_blue", "nhs_light_blue", "nhs_dark_green",
      "nhs_green", "nhs_pink", "nhs_yellow"
    ),
  scw_brand_main =
    nhs_cols(
      "scw_dark_blue", "nhs_aqua_blue", "nhs_dark_blue", "nhs_white"
    ),
  scw_brand_all =
    nhs_cols(
      "scw_dark_blue", "nhs_aqua_blue", "nhs_dark_blue", "nhs_white",
      "nhs_purple", "nhs_light_green", "nhs_aqua_green", "nhs_mid_grey",
      "nhs_pale_grey"
    ),
  seq =
    c(
      "#005eb8", "#1667b5", "#2270b2", "#2d79b1", "#3681b0", "#4089b1",
      "#4a91b2", "#5399b3", "#5ea1b5", "#68a9b8", "#73b0bb", "#7fb7bf",
      "#8abfc3", "#97c6c8", "#a3cdcd", "#b0d3d3", "#bedad9", "#cbe0e0",
      "#dae7e7", "#e8edee"
    ),
  blue_mono =
    c(
      "#1c355e", "#1c3d70", "#1c4680", "#1d4e90", "#23579f", "#2c60ab",
      "#386ab5", "#4573be", "#537cc5", "#6186cb", "#6f90d0", "#7d9ad5",
      "#8ba4d9", "#98aedd", "#a6b8e0", "#b3c2e4", "#c1cde6", "#ced7e9",
      "#dbe2ec", "#e8edee"
    ),
  BuGn =
    c(
      "#005eb8", "#5e7fc6", "#90a2d4", "#bdc7e1", "#e8edee",
      "#bddbd8", "#90c9c3", "#5eb7ae", "#00a499"
    ),
  BuYlRd =
    c(
      "#005eb8", "#3e87b0", "#6eacba", "#a6cecf", "#e8edee",
      "#f8c75f", "#efa040", "#e3764a", "#d1476a"
    ),
  BuRd =
    c(
      "#005eb8", "#5e7fc6", "#90a2d4", "#bdc7e1", "#e8edee",
      "#e8c6cb", "#e49ea9", "#dc7589", "#d1476a"
    ),
  qual =
    c(
      "#005eb8", "#BD2F5A", "#FFB81C", "#1C355E", "#46A39D", "#8A9DAB"
    )
)

#' Return function to interpolate an SCW colour palette
#'
#' @param palette Character name of palette in scw_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @importFrom grDevices colorRampPalette
scw_palette <- function(palette = "seq", reverse = FALSE, ...) {
  pal <- scw_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
