% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_list_thing_types}
\alias{iot_list_thing_types}
\title{Lists the existing thing types}
\usage{
iot_list_thing_types(nextToken, maxResults, thingTypeName)
}
\arguments{
\item{nextToken}{To retrieve the next set of results, the \code{nextToken} value from a
previous response; otherwise \strong{null} to receive the first set of
results.}

\item{maxResults}{The maximum number of results to return in this operation.}

\item{thingTypeName}{The name of the thing type.}
}
\description{
Lists the existing thing types.
}
\section{Request syntax}{
\preformatted{svc$list_thing_types(
  nextToken = "string",
  maxResults = 123,
  thingTypeName = "string"
)
}
}

\keyword{internal}
