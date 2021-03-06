% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/macie2_operations.R
\name{macie2_update_macie_session}
\alias{macie2_update_macie_session}
\title{Suspends or re-enables an Amazon Macie account, or updates the
configuration settings for a Macie account}
\usage{
macie2_update_macie_session(findingPublishingFrequency, status)
}
\arguments{
\item{findingPublishingFrequency}{Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).}

\item{status}{Specifies whether to change the status of the account. Valid values are:
ENABLED, resume all Amazon Macie activities for the account; and,
PAUSED, suspend all Macie activities for the account.}
}
\description{
Suspends or re-enables an Amazon Macie account, or updates the
configuration settings for a Macie account.
}
\section{Request syntax}{
\preformatted{svc$update_macie_session(
  findingPublishingFrequency = "FIFTEEN_MINUTES"|"ONE_HOUR"|"SIX_HOURS",
  status = "PAUSED"|"ENABLED"
)
}
}

\keyword{internal}
