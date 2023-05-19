test_that("histogram with theme", {
  hist_plot <-
    ggplot2::ggplot(mtcars, ggplot2::aes(disp)) +
    ggplot2::geom_histogram() +
    theme_scw()

  vdiffr::expect_doppelganger("histogram", hist_plot)
})

test_that("scatter plot with theme", {
  point_plot <-
    ggplot2::ggplot(mtcars, ggplot2::aes(disp, wt)) +
    ggplot2::geom_point(size = 3) +
    ggplot2::labs(
      subtitle = "Test point plot with SCW theme",
      caption = "Tested using vdiffr & testthat"
    ) +
    theme_scw()

  vdiffr::expect_doppelganger("scatter", point_plot)
})
