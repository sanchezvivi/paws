% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xray_operations.R
\name{xray_get_insight_summaries}
\alias{xray_get_insight_summaries}
\title{Retrieves the summaries of all insights in the specified group matching
the provided filter values}
\usage{
xray_get_insight_summaries(States, GroupARN, GroupName, StartTime,
  EndTime, MaxResults, NextToken)
}
\arguments{
\item{States}{The list of insight states.}

\item{GroupARN}{The Amazon Resource Name (ARN) of the group. Required if the GroupName
isn't provided.}

\item{GroupName}{The name of the group. Required if the GroupARN isn't provided.}

\item{StartTime}{[required] The beginning of the time frame in which the insights started. The start
time can't be more than 30 days old.}

\item{EndTime}{[required] The end of the time frame in which the insights ended. The end time
can't be more than 30 days old.}

\item{MaxResults}{The maximum number of results to display.}

\item{NextToken}{Pagination token.}
}
\description{
Retrieves the summaries of all insights in the specified group matching
the provided filter values.
}
\section{Request syntax}{
\preformatted{svc$get_insight_summaries(
  States = list(
    "ACTIVE"|"CLOSED"
  ),
  GroupARN = "string",
  GroupName = "string",
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
