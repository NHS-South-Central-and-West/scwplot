#' Add SCW theme to ggplot figures
#'
#' This function allows you to add the SCW theme to your ggplot graphics.
#' @param base_size base font size, given in pts (default = 15)
#' @param base_family base font family (default = "sans")
#' @param grid_y show major panel grid lines on y-axis (default = TRUE)
#' @param grid_x show major panel grid lines on x-axis (default = FALSE)
#'
#' @keywords ggplot theme
#'
#' @importFrom ggplot2 %+replace%
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg, aes(displ, cty)) +
#'   geom_point() +
#'   theme_scw()
#'
theme_scw <- function(base_size = 15, base_family = "sans",
                      grid_y = TRUE, grid_x = FALSE) {
  # Use theme_minimal as basis for theme
  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family
  ) %+replace%
    ggplot2::theme(

      # Plot Elements
      plot.background = ggplot2::element_rect(fill = "white", colour = "white"),
      plot.margin = ggplot2::margin(t = 25, b = 25, l = 25, r = 25),

      # Text Elements
      plot.title = ggplot2::element_text(
        colour = "grey10",
        size = ggplot2::rel(1.6),
        face = "bold",
        hjust = 0
      ),
      plot.subtitle = ggplot2::element_text(
        colour = "grey40",
        size = ggplot2::rel(1.2),
        hjust = 0,
        lineheight = 1.4,
        margin = ggplot2::margin(
          t = 15,
          b = 15
        )
      ),
      plot.caption = ggplot2::element_text(
        colour = "grey60",
        size = ggplot2::rel(0.9),
        hjust = 0,
        margin = ggplot2::margin(t = 25)
      ),

      # Legend Elements
      legend.position = "top",
      legend.title = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(
        colour = "grey20",
        size = ggplot2::rel(1.2)
      ),
      legend.key.width = ggplot2::unit(2, "cm"),
      legend.key = ggplot2::element_blank(),

      # Axis Elements
      axis.title.x = ggplot2::element_text(
        colour = "grey20",
        size = ggplot2::rel(1.2),
        vjust = -2.5
      ),
      axis.title.y = ggplot2::element_text(
        colour = "grey20",
        size = ggplot2::rel(1.2),
        vjust = 5,
        angle = 90
      ),
      axis.text = ggplot2::element_text(
        colour = "grey20",
        size = ggplot2::rel(1)
      ),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),

      # Panel Elements
      panel.grid.major.x =
        if (grid_x) {
          ggplot2::element_line(
            linewidth = 0.5,
            colour = "grey90",
            linetype = "dashed"
          )
        } else {
          ggplot2::element_blank()
        },
      panel.grid.major.y =
        if (grid_y) {
          ggplot2::element_line(
            linewidth = 0.5,
            colour = "grey90",
            linetype = "dashed"
          )
        } else {
          ggplot2::element_blank()
        },
      panel.grid.minor.x = ggplot2::element_blank(),
      panel.grid.minor.y = ggplot2::element_blank(),

      # Facet Elements
      strip.text = ggplot2::element_text(size = ggplot2::rel(1)),
      complete = TRUE
    )
}