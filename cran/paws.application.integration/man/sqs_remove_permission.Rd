% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sqs_operations.R
\name{sqs_remove_permission}
\alias{sqs_remove_permission}
\title{Revokes any permissions in the queue policy that matches the specified
Label parameter}
\usage{
sqs_remove_permission(QueueUrl, Label)
}
\arguments{
\item{QueueUrl}{[required] The URL of the Amazon SQS queue from which permissions are removed.

Queue URLs and names are case-sensitive.}

\item{Label}{[required] The identification of the permission to remove. This is the label added
using the \verb{<a>AddPermission</a>} action.}
}
\description{
Revokes any permissions in the queue policy that matches the specified
\code{Label} parameter.
\itemize{
\item Only the owner of a queue can remove permissions from it.
\item Cross-account permissions don't apply to this action. For more
information, see \href{https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name}{Grant cross-account permissions to a role and a user name}
in the \emph{Amazon Simple Queue Service Developer Guide}.
\item To remove the ability to change queue permissions, you must deny
permission to the \code{AddPermission}, \code{RemovePermission}, and
\code{SetQueueAttributes} actions in your IAM policy.
}
}
\section{Request syntax}{
\preformatted{svc$remove_permission(
  QueueUrl = "string",
  Label = "string"
)
}
}

\keyword{internal}
