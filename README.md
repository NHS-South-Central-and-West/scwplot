# scwplot <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->
[![check-standard](https://github.com/NHS-South-Central-and-West/scwplot/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/NHS-South-Central-and-West/scwplot/actions/workflows/check-standard.yaml)
[![test-coverage](https://github.com/NHS-South-Central-and-West/scwplot/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/NHS-South-Central-and-West/scwplot/actions/workflows/test-coverage.yaml)
<!-- badges: end -->


The {scwplot} package provides functions for applying consistent SCW-branded aesthetics to ggplot visualisations in R, as well as additional functionality that produces clean plots and makes plotting in R easier.

## Installation

{scwplot} is not available on CRAN. In order to install the package, you must do so directly from this GitHub repository with {devtools}, using the code below:

```{r}
# install.packages('devtools')
devtools::install_github('NHS-South-Central-and-West/scwplot')
```

If you haven't already installed {devtools}, you will also have to run the first line of code in the code chunk.

## Usage

There are six primary functions in the {scwplot} package. The functions can be subdivided into SCW theme functions and additional utility functions.

The SCW theme functions are as follows:

- ```scw_theme()```
- ```scale_fill_scw()``` and ```scale_colour_scw()```

While the following functions add additional utility to the package:

- ```add_commas()```
- ```finalise_plot()```

### Colour Palettes

There are a selection of colour palettes to choose from, depending on the purpose that the palette serves in the plot.

#### Sequential

**`seq`**

![Sequential colour palette](/images/seq.png)

**`blue_mono`**

![Blue monochrome colour palette](/images/blue_mono.png)

#### Diverging

**`BuGn`**

![Diverging colour palette (blue to green)](/images/BuGn.png)

**`BuYlRd`**

![Diverging colour palette (blue, yellow, red)](/images/BuYlRd.png)

**`BuRd`**

![Diverging colour palette (blue to red)](/images/BuRd.png)

#### Qualitative

**`qual`**

![Qualitative colour palette](/images/qual.png)

## To-Do List

The package is currently in active development, and as such there are a number of developments that have already been planned:

- [x] Migrate package from GitLab to GitHub
- [x] Check package functions
- [x] Submit issues
- [x] Clean up package functions
- [x] Clean up migration and set up GH Actions
- [ ] Redevelop discrete/continuous/qualitative palettes so that they are more aesthetically pleasing, accessible, and follow good data visualisation principles
- [ ] Put together full package documentation
- [ ] Add testing for every function
- [ ] Clean up codebase

## Acknowledgements

This package takes a lot of inspiration from the NHS-R community's [{NHSRtheme}](https://github.com/nhs-r-community/NHSRtheme) package and BBC's [{bbplot}](https://github.com/bbc/bbplot) package.
