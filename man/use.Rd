% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use.R
\name{use}
\alias{use}
\title{Add corpora in R data packages to session registry.}
\usage{
use(pkg, lib.loc = .libPaths(), tmp = FALSE, verbose = TRUE)
}
\arguments{
\item{pkg}{A package including at least one CWB indexed corpus.}

\item{lib.loc}{A character vector with path names of \code{R} libraries.}

\item{tmp}{Whether to use a temporary data directory.}

\item{verbose}{Logical, whether to output status messages.}
}
\description{
Use CWB indexed corpora in R data packages by adding registry file to session
registry.
}
\details{
{pkg} is expected to be an installed data package that includes CWB indexed
corpora. The \code{use}-function will add the registry files describing the
corpus (or the corpora) to the session registry directory and adjust the path
pointing to the data in the package.

The registry files within the package are assumed to be in the subdirectory
\code{./extdata/cwb/registry} of the installed package. The data directories
for corpora are assumed to be in a subdirectory named after the corpus (lower
case) in the package subdirectory \code{./extdata/cwb/indexed_corpora/}. When
adding a corpus to the registry, templates for formatting fulltext output are
reloaded.

If the path to the data directory in a package includes a non-ASCII character,
binary data files of the corpora in package are copied to a subdirectory of the
per-session temporary data directory.
}
\examples{
use("polmineR")
corpus()
}
\seealso{
To get the session registry directory, see \code{\link{registry}};
  to reset the registry, see \code{\link{registry_reset}}.
}
