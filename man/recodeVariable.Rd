% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recodeVariable.R
\name{recodeVariable}
\alias{recodeVariable}
\title{Recode Categorical Variables}
\usage{
recodeVariable(varName, varVect, dataDict)
}
\arguments{
\item{varName}{The name of the categorical variable to be recoded.}

\item{varVect}{The vector of responses for the specified variable.}

\item{dataDict}{The "Categories" sheet of the data dictionary produced by Opal. The
data dictionary is an Excel spreadsheet that contains the two following sheets:
"Variables" and "Categories".}
}
\value{
Returns a recoded vector of the categorical variable. Note that if the function
replaces entries by NA, then the data dictionary is incomplete for the specified
variable.
}
\description{
Automatically recode a categorical text variable with the help of the data dictionary.
}
\examples{
\dontrun{
library(xlxs)

dataSet <- read.csv("path_to_file.csv")
dataDict <- read.xlsx("path_to_data_dictionary.xlsx", sheetName = "Categories")

recodeVariable(varName = "countryOfBirth",
              varVect = cobVect,
              dataDict = dictionary.df)
}
}
\author{
Phil Boileau, \email{philippe.boileau (at) rimuhc.ca}
}
