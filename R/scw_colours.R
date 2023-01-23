nhs_colours <- c(
  `nhs_white`         = "#FFFFFF",
  `nhs_dark_blue`     = "#003087",
  `nhs_blue`          = "#005EB8",
  `nhs_bright_blue`   = "#0072CE",
  `nhs_light_blue`    = "#41B6E6",
  `nhs_aqua_blue`     = "#00A9CE",
  `nhs_black`         = "#231f20",
  `nhs_dark_grey`     = "#425563",
  `nhs_mid_grey`      = "#768692",
  `nhs_pale_grey`     = "#E8EDEE",
  `nhs_dark_green`    = "#006747",
  `nhs_green`         = "#009639",
  `nhs_light_green`   = "#78BE20",
  `nhs_aqua_green`    = "#00A499",
  `nhs_purple`        = "#330072",
  `nhs_dark_pink`     = "#7C2855",
  `nhs_pink`          = "#AE2573",
  `nhs_dark_red`      = "#8A1538",
  `nhs_orange`        = "#ED8B00",
  `nhs_warm_yellow`   = "#FFB81C",
  `nhs_yellow`        = "#FAE100",

  `scw_dark_blue`     = "#1c355e"
)


#' Function to extract NHS colours as hex codes
#'
#' @param cols Character names of NHS colours (e.g. "nhs_white")
#'
nhs_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (nhs_colours)

  nhs_colours[cols]
}



scw_palettes <- list(
  `scw` = nhs_cols("nhs_dark_blue", "nhs_blue", "nhs_light_blue",
                   "nhs_dark_green", "nhs_green", "nhs_pink",
                   "nhs_yellow"),

  `csu_main`  = nhs_cols("scw_dark_blue", "nhs_aqua_blue", "nhs_dark_blue", "nhs_white"),

  `csu_all`  = nhs_cols("scw_dark_blue", "nhs_aqua_blue", "nhs_dark_blue", "nhs_white",
                        "nhs_purple", "nhs_light_green", "nhs_aqua_green", "nhs_mid_grey", "nhs_pale_grey")

)



#' Return function to interpolate an SCW colour palette
#'
#' @param palette Character name of palette in scw_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
scw_palette <- function(palette = "scw", reverse = FALSE, ...) {
  pal <- scw_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
