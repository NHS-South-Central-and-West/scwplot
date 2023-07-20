test_that("show qualitative palettes", {
  nhs_pal <- scales::show_col(pal_qualitative(palette = "nhs", alpha = 1)(5))
  vdiffr::expect_doppelganger("nhs-palette", nhs_pal)

  scw_pal <- scales::show_col(pal_qualitative(palette = "scw", alpha = 0.5)(5))
  vdiffr::expect_doppelganger("scw-palette", scw_pal)

  warm_pal <- scales::show_col(pal_qualitative(palette = "scw_warm", alpha = 1)(6))
  vdiffr::expect_doppelganger("warm-palette", warm_pal)
})

test_that("histogram with qualitative palette", {
  hist_plot <-
    ggplot2::ggplot(mtcars, ggplot2::aes(mpg, fill = factor(gear))) +
    ggplot2::geom_histogram(
      position = "dodge",
      binwidth = 3, colour = "black"
    ) +
    scale_fill_qualitative(palette = "nhs")

  vdiffr::expect_doppelganger("histogram", hist_plot)
})

test_that("scatter plot with qualitative palette", {
  point_plot <-
    ggplot2::ggplot(mtcars, ggplot2::aes(disp, wt, fill = factor(cyl))) +
    ggplot2::geom_point(shape = 21, size = 6, stroke = 1) +
    scale_fill_qualitative(palette = "scw")

  vdiffr::expect_doppelganger("scatter", point_plot)
})
