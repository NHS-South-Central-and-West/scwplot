# scwplot

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

- ```scale_fill_scw()``` and ```scale_colour_scw()```
- ```scw_theme()```

While the following functions add additional utility to the package:

- ```add_commas()```
- ```violin_plot()```
- ```finalise_plot()```

## To-Do List

The package is currently in active development, and as such there are a number of developments that have already been planned:

- [x] Migrate package from GitLab to GitHub
- [x] Check package functions
- [x] Submit issues
- [x] Clean up package functions
- [ ] Redevelop discrete/continuous/qualitative palettes so that they are more aesthetically pleasing, accessible, and follow good data visualisation principles
- [ ] Put together full package documentation
- [ ] Add testing for every function

## Acknowledgements

This package takes a lot of inspiration from the NHS-R community's [{NHSRtheme}](https://github.com/nhs-r-community/NHSRtheme) package and BBC's [{bbplot}](https://github.com/bbc/bbplot) package.
