% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dhist.R
\name{dhist_mean_location}
\alias{dhist_mean_location}
\title{Calculate mean location for a discrete histogram}
\usage{
dhist_mean_location(dhist)
}
\arguments{
\item{dhist}{A discrete histogram as a \code{dhist} object}
}
\value{
The mass-weighted mean location
}
\description{
Calculates mean location for a discrete histogram by taking a weighted sum
of each location weighted by the fraction of the total histogram mass at that
location.
}
