% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_put_outcome}
\alias{frauddetector_put_outcome}
\title{Creates or updates an outcome}
\usage{
frauddetector_put_outcome(name, description, tags)
}
\arguments{
\item{name}{[required] The name of the outcome.}

\item{description}{The outcome description.}

\item{tags}{A collection of key and value pairs.}
}
\description{
Creates or updates an outcome.
}
\section{Request syntax}{
\preformatted{svc$put_outcome(
  name = "string",
  description = "string",
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

\keyword{internal}
