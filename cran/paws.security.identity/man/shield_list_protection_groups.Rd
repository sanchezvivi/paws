% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shield_operations.R
\name{shield_list_protection_groups}
\alias{shield_list_protection_groups}
\title{Retrieves the ProtectionGroup objects for the account}
\usage{
shield_list_protection_groups(NextToken, MaxResults)
}
\arguments{
\item{NextToken}{The next token value from a previous call to \code{ListProtectionGroups}.
Pass null if this is the first call.}

\item{MaxResults}{The maximum number of ProtectionGroup objects to return. If you leave
this blank, Shield Advanced returns the first 20 results.

This is a maximum value. Shield Advanced might return the results in
smaller batches. That is, the number of objects returned could be less
than \code{MaxResults}, even if there are still more objects yet to return.
If there are more objects to return, Shield Advanced returns a value in
\code{NextToken} that you can use in your next request, to get the next batch
of objects.}
}
\description{
Retrieves the ProtectionGroup objects for the account.
}
\section{Request syntax}{
\preformatted{svc$list_protection_groups(
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
