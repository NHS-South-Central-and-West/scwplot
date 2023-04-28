#' get_images
#'
#' View images and icons saved within the package and the relevant file paths
#' to utilise them.
#'
#' @export
get_images <- function() {
  # read all files in package
  temp <- list.files(
    path = system.file("images", package = "scwplot"),
    full.names = TRUE
    )

  lapply(temp, fp <- function(x) {
    system.file("images", paste0(x), package = "scwplot")
  })

  df <- dplyr::tibble(
    index = c(1:length(temp)),
    Image = temp,
    Image_File_Path = paste0("\"", temp, "\"")
    )

  img_table <- df |>
    gt::gt() |>
    gt::text_transform(
      locations = gt::cells_body(c('Image')),
      fn = function(Image) {
        lapply(Image, gt::local_image)
      }
    )

  print(img_table)
}
