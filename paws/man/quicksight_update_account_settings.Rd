% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_update_account_settings}
\alias{quicksight_update_account_settings}
\title{Updates the Amazon QuickSight settings in your AWS account}
\usage{
quicksight_update_account_settings(AwsAccountId, DefaultNamespace,
  NotificationEmail)
}
\arguments{
\item{AwsAccountId}{[required] The ID for the AWS account that contains the QuickSight settings that
you want to list.}

\item{DefaultNamespace}{[required] The default namespace for this AWS account. Currently, the default is
\code{default}. AWS Identity and Access Management (IAM) users that register
for the first time with QuickSight provide an email that becomes
associated with the default namespace.}

\item{NotificationEmail}{The email address that you want QuickSight to send notifications to
regarding your AWS account or QuickSight subscription.}
}
\description{
Updates the Amazon QuickSight settings in your AWS account.
}
\section{Request syntax}{
\preformatted{svc$update_account_settings(
  AwsAccountId = "string",
  DefaultNamespace = "string",
  NotificationEmail = "string"
)
}
}

\keyword{internal}
