test_that("nhs_cols returns correct colours", {
  colours <- nhs_cols()
  expect_type(colours, "character")
})
