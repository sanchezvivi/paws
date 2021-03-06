% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_list_deployment_jobs}
\alias{robomaker_list_deployment_jobs}
\title{Returns a list of deployment jobs for a fleet}
\usage{
robomaker_list_deployment_jobs(filters, nextToken, maxResults)
}
\arguments{
\item{filters}{Optional filters to limit results.

The filter names \code{status} and \code{fleetName} are supported. When filtering,
you must use the complete value of the filtered item. You can use up to
three filters, but they must be for the same named item. For example, if
you are looking for items with the status \code{InProgress} or the status
\code{Pending}.}

\item{nextToken}{If the previous paginated request did not return all of the remaining
results, the response object's \code{nextToken} parameter value is set to a
token. To retrieve the next set of results, call \code{ListDeploymentJobs}
again and assign that token to the request object's \code{nextToken}
parameter. If there are no remaining results, the previous response
object's NextToken parameter is set to null.}

\item{maxResults}{When this parameter is used, \code{ListDeploymentJobs} only returns
\code{maxResults} results in a single page along with a \code{nextToken} response
element. The remaining results of the initial request can be seen by
sending another \code{ListDeploymentJobs} request with the returned
\code{nextToken} value. This value can be between 1 and 200. If this
parameter is not used, then \code{ListDeploymentJobs} returns up to 200
results and a \code{nextToken} value if applicable.}
}
\description{
Returns a list of deployment jobs for a fleet. You can optionally
provide filters to retrieve specific deployment jobs.
}
\section{Request syntax}{
\preformatted{svc$list_deployment_jobs(
  filters = list(
    list(
      name = "string",
      values = list(
        "string"
      )
    )
  ),
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
