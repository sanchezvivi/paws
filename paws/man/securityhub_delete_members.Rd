% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_delete_members}
\alias{securityhub_delete_members}
\title{Deletes the specified member accounts from Security Hub}
\usage{
securityhub_delete_members(AccountIds)
}
\arguments{
\item{AccountIds}{[required] The list of account IDs for the member accounts to delete.}
}
\description{
Deletes the specified member accounts from Security Hub.

Can be used to delete member accounts that belong to an organization as
well as member accounts that were invited manually.
}
\section{Request syntax}{
\preformatted{svc$delete_members(
  AccountIds = list(
    "string"
  )
)
}
}

\keyword{internal}
