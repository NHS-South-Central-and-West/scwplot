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

  lapply(temp, function(x) {
    system.file("images", paste0(x), package = "scwplot")
  })

  df <- dplyr::tibble(
    index = c(seq_along(temp)),
    image = temp,
    image_path = paste0("\"", temp, "\"")
  )

  img_table <- df |>
    gt::gt() |>
    gt::text_transform(
      locations = gt::cells_body(c("image")),
      fn = function(img) {
        lapply(img, gt::local_image)
      }
    )

  print(img_table)
}
