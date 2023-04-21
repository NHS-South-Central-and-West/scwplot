#' Add SCW theme to ggplot chart
#'
#' This function allows you to add the SCW theme to your ggplot graphics.
#' @keywords ggplot theme
#' @importFrom ggplot2 margin unit
#' @export
#' @examples
#' \dontrun{
#' line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' scw_theme()
#' }
scw_theme <-
  function() {ggplot2::theme(
    plot.title = ggplot2::element_text(family = "sans",
                                       size = 14,
                                       margin = ggplot2::margin(4,
                                                                0,
                                                                4,
                                                                0),
                                       face = "bold",
                                       color = "#000000"),
    plot.subtitle = ggplot2::element_text(family = "sans",
                                          size = 12,
                                          margin = ggplot2::margin(4,
                                                                   0,
                                                                   8,
                                                                   0)),
    plot.caption = ggplot2::element_text(family = "sans",
                                         size = 12,
                                         color = "#768692",
                                         hjust = 0),
    legend.position = "top",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family = "sans",
                                        size = 12,
                                        color = "#000000"),
    legend.justification = 'left',
    legend.margin = margin(t = -0.06,
                           r = 0,
                           b = 0,
                           l = 0,
                           unit = "cm"),
    axis.title = ggplot2::element_text(family = "sans",
                                       size = 12,
                                       color = "#000000"),
    axis.title.y = ggplot2::element_text(margin = margin(t = 0,
                                                         r = 10,
                                                         b = 0,
                                                         l =  0)),
    axis.text = ggplot2::element_text(family = "sans",
                                      size = 12,
                                      color = "#000000"),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5,
                                                                 0,
                                                                 10,
                                                                 0)),
    axis.text.y = ggplot2::element_text(margin = ggplot2::margin(5,
                                                                 0,
                                                                 10,
                                                                 0)),
    axis.ticks.y = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(color = "#CBCBCB",
                                               size = 0.2),
    panel.grid.major.x = ggplot2::element_blank(),
    panel.background = ggplot2::element_blank(),
    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text(size = 12,
                                       hjust = 0),
    plot.margin = unit(c(0.8,
                         0.8,
                         0,
                         0.2),
                       "cm"))}












