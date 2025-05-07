
# brain

<!-- badges: start -->
<!-- badges: end -->

is a lightweight `R` package to read `MRtrix3`’s [`.tck` tractography
file
format](https://mrtrix.readthedocs.io/en/dev/getting_started/image_data.html#tracks-file-format-tck).

It currently provides a single function `read_brain`: - parses `.tck`
files using base R only - is comparably fast, and  
- returns a list containing - header information, and - streamline data
as a list of matrices.

## Installation

You can install the development version of `{brain}` like so:

``` r
devtools::install_github('FBrockmeyer/brain')
```

No CRAN.

## Example

``` r
library(brain)
tck_files = list.files(path='path/to/folder', pattern='.tck$', full.names=TRUE)
L = lapply(tck_files, read_brain) |> setNames(basename(tck_files))
```
