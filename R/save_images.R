#' save_images
#'
#' Save images from the get_images() function into your current working directory based on the tabular index.
#'
#' @param x Vector relating to index column in the output of get_images(). For
#' example if x equals c(1,2,4) then this will
#' save images in the output of get_images() with index 1,2 and 4 to the current working directory.
#'
#' @return
#' @export
#'
#' @examples
save_images<-function(x){

  temp = list.files(path=system.file("Brand_Images",package="scwplot"),full.names = TRUE) ##read all files in package
  file.copy(temp[c(x)], to=getwd())



}
