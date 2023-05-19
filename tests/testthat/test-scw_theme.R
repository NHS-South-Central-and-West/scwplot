test_that("histogram with theme", {
  hist_plot <-
    ggplot(mtcars, aes(disp)) +
    geom_histogram() +
    theme_scw()

  vdiffr::expect_doppelganger("histogram", hist_plot)
})

test_that("scatter plot with theme", {
  point_plot <-
    ggplot(mtcars, aes(disp, wt)) +
    geom_point(size = 3) +
    labs(subtitle = "Test point plot with SCW theme",
         caption = "Tested using vdiffr & testthat") +
    theme_scw()

  vdiffr::expect_doppelganger("scatter", point_plot)
})
