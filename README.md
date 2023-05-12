
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scwplot <a href="https://nhs-south-central-and-west.github.io/scwplot/"><img src="man/figures/logo.png" align="right" height="139" /></a>

<!-- badges: start -->

[![check-standard](https://github.com/NHS-South-Central-and-West/scwplot/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/NHS-South-Central-and-West/scwplot/actions/workflows/check-standard.yaml)
[![test-coverage](https://github.com/NHS-South-Central-and-West/scwplot/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/NHS-South-Central-and-West/scwplot/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

The {scwplot} package provides functions for applying consistent
SCW-branded aesthetics to ggplot visualisations in R, as well as
additional functionality that produces clean plots and makes plotting in
R easier.

## Installation

{scwplot} is not available on CRAN. In order to install the package, you
must do so directly from this GitHub repository with {devtools}, using
the code below:

``` r
# install.packages('devtools')

devtools::install_github("NHS-South-Central-and-West/scwplot")
```

If you haven’t already installed {devtools}, you will also have to run
the first line of code in the code chunk.

## Usage

There are six primary functions in the {scwplot} package. The functions
can be subdivided into SCW theme functions and additional utility
functions.

The SCW theme functions are as follows:

- `scw_theme()`
- `scale_fill_scw()` and `scale_colour_scw()`

While the following functions add additional utility to the package:

- `add_commas()`
- `finalise_plot()`

## Acknowledgements

This package takes a lot of inspiration from the NHS-R community’s
[{NHSRtheme}](https://github.com/nhs-r-community/NHSRtheme) package and
BBC’s [{bbplot}](https://github.com/bbc/bbplot) package.
