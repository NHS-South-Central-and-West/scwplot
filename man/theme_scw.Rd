% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scw-theme.R
\name{theme_scw}
\alias{theme_scw}
\title{Add SCW theme to ggplot figures}
\usage{
theme_scw(base_size = 15, base_family = "sans", grid_y = TRUE, grid_x = TRUE)
}
\arguments{
\item{base_size}{base font size, given in pts (default = 15)}

\item{base_family}{base font family (default = "sans")}

\item{grid_y}{show major panel grid lines on y-axis (default = TRUE)}

\item{grid_x}{show major panel grid lines on x-axis (default = TRUE)}
}
\description{
This function allows you to add the SCW theme to your ggplot graphics.
}
\examples{
library(ggplot2)

ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  theme_scw()

}
\keyword{ggplot}
\keyword{theme}
