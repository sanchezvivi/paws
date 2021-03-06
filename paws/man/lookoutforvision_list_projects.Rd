% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lookoutforvision_operations.R
\name{lookoutforvision_list_projects}
\alias{lookoutforvision_list_projects}
\title{Lists the Amazon Lookout for Vision projects in your AWS account}
\usage{
lookoutforvision_list_projects(NextToken, MaxResults)
}
\arguments{
\item{NextToken}{If the previous response was incomplete (because there is more data to
retrieve), Amazon Lookout for Vision returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
projects.}

\item{MaxResults}{The maximum number of results to return per paginated call. The largest
value you can specify is 100. If you specify a value greater than 100, a
ValidationException error occurs. The default value is 100.}
}
\description{
Lists the Amazon Lookout for Vision projects in your AWS account.
}
\section{Request syntax}{
\preformatted{svc$list_projects(
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
