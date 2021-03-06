% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_get_ops_metadata}
\alias{ssm_get_ops_metadata}
\title{View operational metadata related to an application in Application
Manager}
\usage{
ssm_get_ops_metadata(OpsMetadataArn, MaxResults, NextToken)
}
\arguments{
\item{OpsMetadataArn}{[required] The Amazon Resource Name (ARN) of an OpsMetadata Object to view.}

\item{MaxResults}{The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.}

\item{NextToken}{A token to start the list. Use this token to get the next set of
results.}
}
\description{
View operational metadata related to an application in Application
Manager.
}
\section{Request syntax}{
\preformatted{svc$get_ops_metadata(
  OpsMetadataArn = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
