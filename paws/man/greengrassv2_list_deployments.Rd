% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrassv2_operations.R
\name{greengrassv2_list_deployments}
\alias{greengrassv2_list_deployments}
\title{Retrieves a paginated list of deployments}
\usage{
greengrassv2_list_deployments(targetArn, historyFilter, maxResults,
  nextToken)
}
\arguments{
\item{targetArn}{The
\href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html}{ARN}
of the target AWS IoT thing or thing group.}

\item{historyFilter}{The filter for the list of deployments. Choose one of the following
options:
\itemize{
\item \code{ALL} – The list includes all deployments.
\item \code{LATEST_ONLY} – The list includes only the latest revision of each
deployment.
}

Default: \code{LATEST_ONLY}}

\item{maxResults}{The maximum number of results to be returned per paginated request.}

\item{nextToken}{The token to be used for the next set of paginated results.}
}
\description{
Retrieves a paginated list of deployments.
}
\section{Request syntax}{
\preformatted{svc$list_deployments(
  targetArn = "string",
  historyFilter = "ALL"|"LATEST_ONLY",
  maxResults = 123,
  nextToken = "string"
)
}
}

\keyword{internal}
