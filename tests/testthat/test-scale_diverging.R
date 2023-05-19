test_that("show diverging palettes", {
  bg_pal <- scales::show_col(pal_diverging(palette = "blue_green", alpha = 1)(5))
  vdiffr::expect_doppelganger("blue-green-palette", bg_pal)

  by_pal <- scales::show_col(pal_diverging(palette = "blue_yellow", alpha = 0.5)(5))
  vdiffr::expect_doppelganger("blue-yellow-palette", by_pal)

  br_pal <- scales::show_col(pal_diverging(palette = "blue_red", alpha = 1)(6))
  vdiffr::expect_doppelganger("blue-red-palette", br_pal)
})

test_that("histogram with diverging palette", {
  hist_plot <-
    ggplot(mtcars, aes(mpg, fill = factor(gear))) +
    geom_histogram(position = "dodge", binwidth = 3, colour = "black") +
    scale_fill_diverging(palette = "blue_green", discrete = TRUE)

  vdiffr::expect_doppelganger("histogram", hist_plot)
})

test_that("scatter plot with diverging palette", {
  point_plot <-
    ggplot(mtcars, aes(disp, wt, fill = drat)) +
    geom_point(shape = 21, size = 6, stroke = 1) +
    scale_fill_diverging(palette = "blue_yellow",
                         discrete = FALSE, reverse = TRUE)

  vdiffr::expect_doppelganger("scatter", point_plot)
})



