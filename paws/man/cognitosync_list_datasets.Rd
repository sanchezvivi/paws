% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitosync_operations.R
\name{cognitosync_list_datasets}
\alias{cognitosync_list_datasets}
\title{Lists datasets for an identity}
\usage{
cognitosync_list_datasets(IdentityPoolId, IdentityId, NextToken,
  MaxResults)
}
\arguments{
\item{IdentityPoolId}{[required] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.}

\item{IdentityId}{[required] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.}

\item{NextToken}{A pagination token for obtaining the next page of results.}

\item{MaxResults}{The maximum number of results to be returned.}
}
\description{
Lists datasets for an identity. With Amazon Cognito Sync, each identity
has access only to its own data. Thus, the credentials used to make this
API call need to have access to the identity data.

ListDatasets can be called with temporary user credentials provided by
Cognito Identity or with developer credentials. You should use the
Cognito Identity credentials to make this API call.
}
\section{Request syntax}{
\preformatted{svc$list_datasets(
  IdentityPoolId = "string",
  IdentityId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
