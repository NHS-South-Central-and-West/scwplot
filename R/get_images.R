#' get_images
#'
#' View images and icons saved within the package and the relevant file paths to utilise them.
#'
#' @return
#' @export
#'
#' @examples
get_images<-function(){

  temp = list.files(path=system.file("Brand_Images",package="scwplot"),full.names = TRUE) ##read all files in package


  lapply(temp, fp<-function(x){ system.file("Brand_Images",paste0(x),package="scwplot") })


  df <- dplyr::tibble(index= c(1:length(temp))
                      ,Image = temp

                      ,
                      Image_File_Path = paste0("\"",temp,"\"" ))




  SCW_BI<- df %>%
    gt::gt() %>%
    gt::text_transform(
      locations = gt::cells_body(c(Image)),
      fn = function(Image) {
        #  The key is here.
        lapply(Image, gt::local_image)
      }
    )



  print(SCW_BI)



}
