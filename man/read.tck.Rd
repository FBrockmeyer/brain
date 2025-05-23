% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01-read.tck.R
\name{read.tck}
\alias{read.tck}
\title{Read MRtrix3's TCK file format (.tck)}
\usage{
read.tck(filepath, n = 50L)
}
\arguments{
\item{filepath}{Path to tck file.}

\item{n}{Number of lines to read to grasp information contained in header. Default is 50L.}
}
\value{
A list of matrices.
}
\description{
Function to read MRtrix3's TCK file format (.tck). Such files consists of a header and binary data.
See \href{https://mrtrix.readthedocs.io/en/dev/getting_started/image_data.html#tracks-file-format-tck}{MRtrix3 documentation}
for a complete description of the file format. This functions relies heavily on \href{https://rdrr.io/cran/freesurferformats/man/read.dti.tck.html}{\code{freesurferformats::read.dti.tck()}} but
is magnitudes faster.
}
\examples{
brain::read.tck('path/to/file.tck') # do not run
}
