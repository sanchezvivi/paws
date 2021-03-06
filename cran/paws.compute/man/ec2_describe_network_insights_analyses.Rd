% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_network_insights_analyses}
\alias{ec2_describe_network_insights_analyses}
\title{Describes one or more of your network insights analyses}
\usage{
ec2_describe_network_insights_analyses(NetworkInsightsAnalysisIds,
  NetworkInsightsPathId, AnalysisStartTime, AnalysisEndTime, Filters,
  MaxResults, DryRun, NextToken)
}
\arguments{
\item{NetworkInsightsAnalysisIds}{The ID of the network insights analyses. You must specify either
analysis IDs or a path ID.}

\item{NetworkInsightsPathId}{The ID of the path. You must specify either a path ID or analysis IDs.}

\item{AnalysisStartTime}{The time when the network insights analyses started.}

\item{AnalysisEndTime}{The time when the network insights analyses ended.}

\item{Filters}{The filters. The following are possible values:
\itemize{
\item PathFound - A Boolean value that indicates whether a feasible path
is found.
\item Status - The status of the analysis (running | succeeded | failed).
}}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned \code{nextToken}
value.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{NextToken}{The token for the next page of results.}
}
\description{
Describes one or more of your network insights analyses.
}
\section{Request syntax}{
\preformatted{svc$describe_network_insights_analyses(
  NetworkInsightsAnalysisIds = list(
    "string"
  ),
  NetworkInsightsPathId = "string",
  AnalysisStartTime = as.POSIXct(
    "2015-01-01"
  ),
  AnalysisEndTime = as.POSIXct(
    "2015-01-01"
  ),
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  DryRun = TRUE|FALSE,
  NextToken = "string"
)
}
}

\keyword{internal}
