% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_list_workforces}
\alias{sagemaker_list_workforces}
\title{Use this operation to list all private and vendor workforces in an AWS
Region}
\usage{
sagemaker_list_workforces(SortBy, SortOrder, NameContains, NextToken,
  MaxResults)
}
\arguments{
\item{SortBy}{Sort workforces using the workforce name or creation date.}

\item{SortOrder}{Sort workforces in ascending or descending order.}

\item{NameContains}{A filter you can use to search for workforces using part of the
workforce name.}

\item{NextToken}{A token to resume pagination.}

\item{MaxResults}{The maximum number of workforces returned in the response.}
}
\description{
Use this operation to list all private and vendor workforces in an AWS
Region. Note that you can only have one private workforce per AWS
Region.
}
\section{Request syntax}{
\preformatted{svc$list_workforces(
  SortBy = "Name"|"CreateDate",
  SortOrder = "Ascending"|"Descending",
  NameContains = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
