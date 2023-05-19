test_that("show sequential palettes", {
  blues_pal <- scales::show_col(pal_sequential(palette = "blues", alpha = 1)(5))
  vdiffr::expect_doppelganger("blues-palette", blues_pal)

  dark_blues_pal <-
    scales::show_col(pal_sequential(palette = "dark_blues", alpha = 0.5)(5))
  vdiffr::expect_doppelganger("dark-blues-palette", dark_blues_pal)

  blue_grey_pal <-
    scales::show_col(pal_sequential(palette = "blue_grey", alpha = 1)(6))
  vdiffr::expect_doppelganger("blue-grey-palette", blue_grey_pal)

  blue_green_yellow_pal <-
    scales::show_col(pal_sequential(palette = "blue_green_yellow",
                                    alpha = 1)(6))
  vdiffr::expect_doppelganger("blue-green-yellow-palette",
                              blue_green_yellow_pal)
})

test_that("histogram with sequential palette", {
  hist_plot <-
    ggplot(mtcars, aes(mpg, fill = factor(gear))) +
    geom_histogram(position = "dodge", binwidth = 3, colour = "black") +
    scale_fill_sequential(palette = "blue_green_yellow", discrete = TRUE)

  vdiffr::expect_doppelganger("histogram", hist_plot)
})

test_that("scatter plot with sequential palette", {
  point_plot <-
    ggplot(mtcars, aes(disp, wt, fill = drat)) +
    geom_point(shape = 21, size = 6, stroke = 1) +
    scale_fill_sequential(palette = "blues",
                         discrete = FALSE, reverse = TRUE)

  vdiffr::expect_doppelganger("scatter", point_plot)
})



