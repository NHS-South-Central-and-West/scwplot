# Generate internal colour palettes data `R/sysdata.rda`
#
# - R Packages - Internal data <https://r-pkgs.org/data.html#sec-data-sysdata>
# - Name that Color <http://chir.ag/projects/name-that-color/>
# - Color Name & Hue <https://www.color-blindness.com/color-name-hue/>

palettes <- vector("list")


# NHS Colour Palettes

palettes$"nhs"$"main" <- c(
  "NHS Dark Blue" = "#003087",
  "NHS Blue" = "#005EB8",
  "NHS Light Blue" = "#41B6E6",
  "NHS Dark Green" = "#006747",
  "NHS Green" = "#009639",
  "NHS Pink" = "#AE2573",
  "NHS Yellow" = "#FAE100"
)

palettes$"nhs"$"all" <- c(
  "NHS White" = "#FFFFFF",
  "NHS Dark Blue" = "#003087",
  "NHS Blue" = "#005EB8",
  "NHS Bright Blue" = "#0072CE",
  "NHS Light Blue" = "#41B6E6",
  "NHS Aqua Blue" = "#00A9CE",
  "NHS Black" = "#231f20",
  "NHS Dark Grey" = "#425563",
  "NHS Mid Grey" = "#768692",
  "NHS Pale Grey" = "#E8EDEE",
  "NHS Dark Green" = "#006747",
  "NHS Green" = "#009639",
  "NHS Light Green" = "#78BE20",
  "NHS Aqua Green" = "#00A499",
  "NHS Purple" = "#330072",
  "NHS Dark Pink" = "#7C2855",
  "NHS Pink" = "#AE2573",
  "NHS Dark Red" = "#8A1538",
  "NHS Orange" = "#ED8B00",
  "NHS Warm Yellow" = "#FFB81C",
  "NHS Yellow" = "#FAE100"
)

palettes$"scw"$"main" <- c(
  "SCW Dark Blue" = "#1c355e",
  "NHS Aqua Blue" = "#00A9CE",
  "NHS Dark Blue" = "#003087",
  "NHS White" = "#FFFFFF"
)

palettes$"scw"$"all" <- c(
  "SCW Dark Blue" = "#1c355e",
  "NHS Aqua Blue" = "#00A9CE",
  "NHS Dark Blue" = "#003087",
  "NHS White" = "#FFFFFF",
  "NHS Purple" = "#330072",
  "NHS Light Green" = "#78BE20",
  "NHS Aqua Green" = "#00A499",
  "NHS Mid Grey" = "#768692",
  "NHS Pale Grey" = "#E8EDEE"
)

# Sequential Colour Palettes

palettes$"sequential"$"blues" <- c(
  "NHS Blue" = "#005EB8",
  "Denim" = "#1873C5",
  "Curious Blue" = "#3687CD",
  "Picton Blue" = "#539BD4",
  "Jordy Blue" = "#70AFDC",
  "Cornflower" = "#8EC2E3",
  "Tropical Blue" = "#AED5EC",
  "Link Water" = "#CFE7F5",
  "Alice Blue" = "#F2F9FF"
)

palettes$"sequential"$"dark_blues" <- c(
  "SCW Dark Blue" = "#1C355E",
  "Bahama Blue" = "#1D4B84",
  "Lochmara" = "#2763A0",
  "Curious Blue" = "#3C7CB6",
  "Picton Blue" = "#5796C8",
  "Seagull" = "#78B0D7",
  "Charlotte" = "#9CC9E4",
  "Link Water" = "#C5E2F2",
  "Alice Blue" = "#F2F9FF"
)

palettes$"sequential"$"blue_grey" <- c(
  "SCW Dark Blue" = "#1C355E",
  "Bahama Blue" = "#29497F",
  "Mariner" = "#415E98",
  "Chetwode Blue" = "#5B73AC",
  "Wild Blue Yonder" = "#768ABE",
  "Polo Blue" = "#91A2CF",
  "Light Steel Blue" = "#ADBADD",
  "Periwinkle" = "#CAD3E9",
  "NHS Pale Grey" = "#E8EDEE"
)

palettes$"sequential"$"blue_green_yellow" <- c(
  "NHS Blue" = "#005eb8",
  "Lochmara" = "#2A75B1",
  "Boston Blue" = "#448AB0",
  "Shakespeare" = "#5E9EB2",
  "Glacier" = "#7AB1B8",
  "Shadow Green" = "#98C4C0",
  "Jet Stream" = "#B8D6CB",
  "Apple Green" = "#DBE7D7",
  "Floral White" = "#FFF7E6"
)

# Diverging Colour Palettes

palettes$"diverging"$"blue_green" <- c(
  "NHS Blue" = "#005EB8",
  "Havelock Blue" = "#5E7FC5",
  "Polo Blue" = "#90A2D1",
  "Periwinkle" = "#BDC7E0",
  "NHS Pale Grey" = "#E8EDEE",
  "Iceberg" = "#BDDBD8",
  "Morning Glory" = "#90C9C3",
  "Puerto Rico" = "#5EB7AE",
  "NHS Aqua Green" = "#00A499"
)


palettes$"diverging"$"blue_yellow" <- c(
  "NHS Blue" = "#005EB8",
  "Pelorous" = "#3088C5",
  "Picton Blue" = "#67B0D3",
  "French Pass" = "#A4D2E1",
  "NHS Pale Grey" = "#E8EDEE",
  "Splash" = "#F2DF9B",
  "Energy Yellow" = "#F6D262",
  "Sunglow" = "#FBC439",
  "NHS Warm Yellow" = "#FFB81C"
)

palettes$"diverging"$"blue_red" <- c(
  "NHS Blue" = "#005EB8",
  "Havelock Blue" = "#5280CC",
  "Portage" = "#89A3DA",
  "Periwinkle" = "#BAC7E5",
  "NHS Pale Grey" = "#E8EDEE",
  "Melanie" = "#E4BBC1",
  "Petite Orchid" = "#DB8996",
  "Cabaret" = "#CE5369",
  "Venetian Red" = "#B8002F"
)


# Qualitative Colour Palettes

palettes$"qualitative"$"nhs" <- c(
  "NHS Blue" = "#005EB8",
  "NHS Light Blue" = "#41B6E6",
  "NHS Mid Grey" = "#768692",
  "NHS Dark Blue" = "#003087",
  "Platinum" = "#D9DDE0"
)

palettes$"qualitative"$"scw" <- c(
  "SCW Dark Blue" = "#1C355E",
  "NHS Aqua Green" = "#00A499",
  "NHS Blue" = "#005EB8",
  "NHS Light Green" = "#78BE20",
  "Heather" = "#ADB6BE"
)

palettes$"qualitative"$"scw_warm" <- c(
  "NHS Blue" = "#005EB8",
  "NHS Light Blue" = "#41B6E6",
  "Golden Tainoi" = "#FFC649",
  "SCW Dark Blue" = "#1C355E",
  "NHS Orange" = "#ED8B00",
  "NHS Mid Grey" = "#768692"
)

usethis::use_data(palettes, overwrite = TRUE)
