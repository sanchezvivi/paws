% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gluedatabrew_operations.R
\name{gluedatabrew_list_datasets}
\alias{gluedatabrew_list_datasets}
\title{Lists all of the AWS Glue DataBrew datasets for the current AWS account}
\usage{
gluedatabrew_list_datasets(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The maximum number of results to return in this request.}

\item{NextToken}{A token generated by DataBrew that specifies where to continue
pagination if a previous request was truncated. To get the next set of
pages, pass in the NextToken value from the response object of the
previous page call.}
}
\description{
Lists all of the AWS Glue DataBrew datasets for the current AWS account.
}
\section{Request syntax}{
\preformatted{svc$list_datasets(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
