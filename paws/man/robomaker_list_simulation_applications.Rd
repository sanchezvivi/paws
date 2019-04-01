% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_list_simulation_applications}
\alias{robomaker_list_simulation_applications}
\title{Returns a list of simulation applications}
\usage{
robomaker_list_simulation_applications(versionQualifier, nextToken,
  maxResults, filters)
}
\arguments{
\item{versionQualifier}{The version qualifier of the simulation application.}

\item{nextToken}{The \code{nextToken} value returned from a previous paginated
\code{ListSimulationApplications} request where \code{maxResults} was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the \code{nextToken} value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.}

\item{maxResults}{The maximum number of deployment job results returned by
\code{ListSimulationApplications} in paginated output. When this parameter is
used, \code{ListSimulationApplications} only returns \code{maxResults} results in
a single page along with a \code{nextToken} response element. The remaining
results of the initial request can be seen by sending another
\code{ListFleets} request with the returned \code{nextToken} value. This value can
be between 1 and 100. If this parameter is not used, then
\code{ListSimulationApplications} returns up to 100 results and a \code{nextToken}
value if applicable.}

\item{filters}{Optional list of filters to limit results. The only valid filter name is
\code{name}.}
}
\description{
Returns a list of simulation applications. You can optionally provide
filters to retrieve specific simulation applications.
}
\section{Request syntax}{
\preformatted{robomaker$list_simulation_applications(
  versionQualifier = "string",
  nextToken = "string",
  maxResults = 123,
  filters = list(
    list(
      name = "string",
      values = list(
        "string"
      )
    )
  )
)
}
}

\keyword{internal}