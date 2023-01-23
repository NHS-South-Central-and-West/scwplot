#' @export

 SCW_labs <- function(...,
                      title = "Who am I? - I need a title!",
                      subtitle = "What am I? - I need a subtitle!",
                      x = "Please label me!",
                      y = "And me!",
                      caption = "Where am I from? - I need a source caption!",
                      tag = waiver()){


   ggplot2::  labs(   title = title,
                      subtitle = subtitle,
                      x = x,
                      y = y,
                      caption = caption,
                      tag = tag
   )
 }
