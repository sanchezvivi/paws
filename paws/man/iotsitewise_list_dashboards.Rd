% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotsitewise_operations.R
\name{iotsitewise_list_dashboards}
\alias{iotsitewise_list_dashboards}
\title{Retrieves a paginated list of dashboards for an AWS IoT SiteWise Monitor
project}
\usage{
iotsitewise_list_dashboards(projectId, nextToken, maxResults)
}
\arguments{
\item{projectId}{[required] The ID of the project.}

\item{nextToken}{The token to be used for the next set of paginated results.}

\item{maxResults}{The maximum number of results to be returned per paginated request.

Default: 50}
}
\description{
Retrieves a paginated list of dashboards for an AWS IoT SiteWise Monitor
project.
}
\section{Request syntax}{
\preformatted{svc$list_dashboards(
  projectId = "string",
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
