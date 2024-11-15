% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doViperSummary.R
\name{doViperSummary}
\alias{doViperSummary}
\title{doViperSummary}
\usage{
doViperSummary(viperObs0)
}
\arguments{
\item{viperObs0}{A VIPER raw-data file: \code{\link{viperObs365}}, \code{\link{viperObs455}}}
}
\value{
A VIPER summary file: \code{\link{viperSummary365}} or \code{\link{viperSummary455}}
}
\description{
This function estimates the VIPER performance results.
Before archiving this on GitHub, the function was called analyzeData.
}
\examples{
# This example takes a long time (4min with Intel Core i7).
# I am commenting it out so that package checks don't take too long.
# You are welcome to run it!
# library("iMRMC")
# viperSummary <- viperData::doViperSummary(viperData::viperObs455)
}
