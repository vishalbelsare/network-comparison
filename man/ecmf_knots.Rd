% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dhist.R
\name{ecmf_knots}
\alias{ecmf_knots}
\title{Get "knots" for discrete histogram empirical cumulative mass function
(ECMF). The "knots" are the x-values at which the y-value of the ECDM changes
gradient (i.e. the x-values between which the ECMF does its constant or
linear interpolates)}
\usage{
ecmf_knots(dhist_ecmf)
}
\arguments{
\item{dhist_ecmf}{An object of class \code{dhist_ecmf}, returned from a call
to the \code{dhist_ecmf} function}
}
\value{
x_knots A list of "knots" for the ECMF, containing all x-values at
which the y-value changes gradient (i.e. the x-values between which the ECMF
does its constant or linear interpolation)
}
\description{
Get "knots" for discrete histogram empirical cumulative mass function
(ECMF). The "knots" are the x-values at which the y-value of the ECDM changes
gradient (i.e. the x-values between which the ECMF does its constant or
linear interpolates)
}
