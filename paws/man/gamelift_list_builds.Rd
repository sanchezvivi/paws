% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_list_builds}
\alias{gamelift_list_builds}
\title{Retrieves build resources for all builds associated with the AWS account
in use}
\usage{
gamelift_list_builds(Status, Limit, NextToken)
}
\arguments{
\item{Status}{Build status to filter results by. To retrieve all builds, leave this
parameter empty.

Possible build statuses include the following:
\itemize{
\item \strong{INITIALIZED} -- A new build has been defined, but no files have
been uploaded. You cannot create fleets for builds that are in this
status. When a build is successfully created, the build status is
set to this value.
\item \strong{READY} -- The game build has been successfully uploaded. You can
now create new fleets for this build.
\item \strong{FAILED} -- The game build upload failed. You cannot create new
fleets for this build.
}}

\item{Limit}{The maximum number of results to return. Use this parameter with
\code{NextToken} to get results as a set of sequential pages.}

\item{NextToken}{Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this operation.
To start at the beginning of the result set, do not specify a value.}
}
\description{
Retrieves build resources for all builds associated with the AWS account
in use. You can limit results to builds that are in a specific status by
using the \code{Status} parameter. Use the pagination parameters to retrieve
results in a set of sequential pages.

Build resources are not listed in any particular order.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html}{Upload a Custom Server Build}

\strong{Related operations}
\itemize{
\item CreateBuild
\item ListBuilds
\item DescribeBuild
\item UpdateBuild
\item DeleteBuild
}
}
\section{Request syntax}{
\preformatted{svc$list_builds(
  Status = "INITIALIZED"|"READY"|"FAILED",
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
