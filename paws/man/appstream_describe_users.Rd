% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appstream_operations.R
\name{appstream_describe_users}
\alias{appstream_describe_users}
\title{Retrieves a list that describes one or more specified users in the user
pool}
\usage{
appstream_describe_users(AuthenticationType, MaxResults, NextToken)
}
\arguments{
\item{AuthenticationType}{[required] The authentication type for the users in the user pool to describe. You
must specify USERPOOL.}

\item{MaxResults}{The maximum size of each page of results.}

\item{NextToken}{The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.}
}
\description{
Retrieves a list that describes one or more specified users in the user
pool.
}
\section{Request syntax}{
\preformatted{svc$describe_users(
  AuthenticationType = "API"|"SAML"|"USERPOOL",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
