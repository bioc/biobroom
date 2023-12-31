% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MSnSet_tidiers.R
\name{MSnSet_tidiers}
\alias{MSnSet_tidiers}
\alias{tidy.MSnSet}
\title{Tidying methods for Biobase's ExpressionSet objects}
\usage{
\method{tidy}{MSnSet}(x, addPheno = FALSE, ...)
}
\arguments{
\item{x}{MSnSet object}

\item{addPheno}{whether columns should be included in the tidied output
for those in the MSnSet's phenoData}

\item{...}{extra arguments (not used)}
}
\value{
\code{tidy} returns a data frame with one row per gene-sample
combination, with columns
  \item{protein}{protein name}
  \item{sample}{sample name (from column names)}
  \item{value}{protein quantitation data}
}
\description{
Tidying methods for Biobase's ExpressionSet objects
}
\details{
\code{addPheno=TRUE} adds columns that are redundant (since they
add per-sample information to a per-sample-per-gene data frame), but that
are useful for some kinds of graphs and analyses.
}
\examples{
if (require("MSnbase")) {
  library(MSnbase)
  # import MSnSet object
  data(msnset)

  # Use tidy to extract genes, sample ids and measured value
  tidy(msnset)
  # add phenoType data
  tidy(msnset, addPheno=TRUE)
}
}
