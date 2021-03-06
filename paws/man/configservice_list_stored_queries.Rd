% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_list_stored_queries}
\alias{configservice_list_stored_queries}
\title{List the stored queries for an AWS account in an AWS Region}
\usage{
configservice_list_stored_queries(NextToken, MaxResults)
}
\arguments{
\item{NextToken}{The nextToken string returned in a previous request that you use to
request the next page of results in a paginated response.}

\item{MaxResults}{The maximum number of results to be returned with a single call.}
}
\description{
List the stored queries for an AWS account in an AWS Region. The default
is 100.
}
\section{Request syntax}{
\preformatted{svc$list_stored_queries(
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
