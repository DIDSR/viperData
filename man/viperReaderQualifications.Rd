% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{viperReaderQualifications}
\alias{viperReaderQualifications}
\title{VIPER reader qualification summary}
\format{
An object of class \code{data.frame} with 43 rows and 10 columns.
}
\usage{
viperReaderQualifications
}
\description{
This data set contains the information from the VIPER reader recruitment qualification forms.
  The original data was modified to turn
  text in numeric fields to appropriate numbers. For example, "~100" was modified to 100,
  "100+" was modified to 100,  "<50" was modified to 50, "200-250" was modified to 225,
  "don't know" was modified to "NA", and "very few" was modified to "NA".
}
\details{
A data frame with 10 variables:
   \itemize{
     \item \code{readerID} \cr
     \item \code{certifiedABR} \cr
     \item \code{breastImagingFellowship} \cr
     \item \code{fellowshipYear} \cr
     \item \code{min50sfm} \cr
     \item \code{min50ffdm} \cr
     \item \code{howManySFMlast2years} \cr
     \item \code{howManyFFDMlast2years} \cr
     \item \code{howManyYearsPostResidencyExperienceInterpretingSFM} \cr
     \item \code{howManyYearsPostResidencyExperienceInterpretingFFDM}
   }
}
\keyword{datasets}
