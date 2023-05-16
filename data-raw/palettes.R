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

palettes$"sequential"$"blue_mono" <- c(
  "SCW Dark Blue" = "#1c355e",
  "Bahama Blue" = "#1d4a82",
  "Endeavour" = "#25609e",
  "Astral" = "#3878b2",
  "Steel Blue" = "#5291c3",
  "Seagull" = "#71a9d0",
  "French Pass" = "#94c0db",
  "Ziggurat" = "#bcd7e5",
  "NHS Pale Grey" = "#e8edee"
)

palettes$"sequential"$"blue_green" <- c(
  "SCW Dark Blue" = "#1c355e",
  "Bahama Blue" = "#1d4579",
  "Endeavour" = "#20568c",
  "Lochmara" = "#266999",
  "Astral" = "#2e7da2",
  "Scooter" = "#3791a8",
  "Pelorous" = "#44a6ae",
  "Fountain Blue" = "#56bab6",
  "Downy" = "#70ccc4"
)

# Diverging Colour Palettes

palettes$"diverging"$"blue_green" <- c(
  "NHS Blue" = "#005eb8",
  "Havelock Blue" = "#5e7fc6",
  "Portage" = "#90a2d4",
  "Periwinkle" = "#bdc7e1",
  "NHS Pale Grey" = "#e8edee",
  "Iceberg" = "#bddbd8",
  "Morning Glory" = "#90c9c3",
  "Tradewind" = "#5eb7ae",
  "NHS Aqua Green" = "#00a499"
)


palettes$"diverging"$"blue_yellow_red" <- c(
  "NHS Blue" = "#005eb8",
  "Curious Blue" = "#3e87b0",
  "Glacier" = "#6eacba",
  "Sinbad" = "#a6cecf",
  "NHS Pale Grey" = "#e8edee",
  "Kournikova" = "#f8c75f",
  "Sea Buckthorn" = "#efa040",
  "Jaffa" = "#e3764a",
  "Cabaret" = "#d1476a"
)

palettes$"diverging"$"blue_red" <- c(
  "NHS Blue" = "#005eb8",
  "Havelock Blue" = "#5e7fc6",
  "Portage" = "#90a2d4",
  "Periwinkle" = "#bdc7e1",
  "NHS Pale Grey" = "#e8edee",
  "Vanilla Ice" = "#e8c6cb",
  "Kobi" = "#e49ea9",
  "Pale Violet Red" = "#dc7589",
  "Cabaret" = "#d1476a"
)

# Qualitative Colour Palettes

palettes$"qualitative"$"default" <- c(
  "NHS Blue" = "#005eb8",
  "Hibiscus" = "#BD2F5A",
  "NHS Warm Yellow" = "#FFB81C",
  "SCW Dark Blue" = "#1C355E",
  "Keppel" = "#46A39D",
  "Bali Hai" = "#8A9DAB"
)

usethis::use_data(palettes, overwrite = TRUE)
