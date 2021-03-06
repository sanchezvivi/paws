% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transfer_operations.R
\name{transfer_list_servers}
\alias{transfer_list_servers}
\title{Lists the file transfer protocol-enabled servers that are associated
with your AWS account}
\usage{
transfer_list_servers(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{Specifies the number of servers to return as a response to the
\code{ListServers} query.}

\item{NextToken}{When additional results are obtained from the \code{ListServers} command, a
\code{NextToken} parameter is returned in the output. You can then pass the
\code{NextToken} parameter in a subsequent command to continue listing
additional servers.}
}
\description{
Lists the file transfer protocol-enabled servers that are associated
with your AWS account.
}
\section{Request syntax}{
\preformatted{svc$list_servers(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
