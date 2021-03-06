% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/S4classes.R, R/regions.R
\docType{class}
\name{regions}
\alias{regions}
\alias{CorpusOrSubcorpus-class}
\alias{regions-class}
\alias{CorpusOrSubcorpus}
\alias{as.regions}
\alias{as.data.table.regions}
\title{Regions of a CWB corpus.}
\usage{
as.regions(x, ...)

\method{as.data.table}{regions}(x, values = NULL)
}
\arguments{
\item{x}{object of class \code{regions}}

\item{...}{Further arguments.}

\item{values}{values to assign to a column that will be added}
}
\description{
A coerce-method is available to coerce a \code{partition} object to a
\code{regions} object.
}
\details{
The virtual class \code{CorpusOrSubcorpus} is a way to handle corpora specified
by a character vector, \code{region} objects, and \code{partition} objects
in a uniform manner.

The \code{as.regions}-method coerces objects to a \code{regions}-object.
}
\section{Slots}{

\describe{
\item{\code{cpos}}{a two-column \code{data.table} that will include a "cpos_left" and "cpos_right" column}

\item{\code{corpus}}{the CWB corpus (character vector length 1)}

\item{\code{encoding}}{the encoding of the CWB corpus (character vector length 1)}
}}

\examples{
use("polmineR")
P <- partition("GERMAPARLMINI", date = "2009-11-12", speaker = "Jens Spahn")
R <- as.regions(P)
}
\seealso{
Other classes to manage corpora: \code{\link{corpus-class}},
  \code{\link{subcorpus}}
}
\concept{classes to manage corpora}
