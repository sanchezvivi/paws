% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sqs_operations.R
\name{sqs_add_permission}
\alias{sqs_add_permission}
\title{Adds a permission to a queue for a specific principal}
\usage{
sqs_add_permission(QueueUrl, Label, AWSAccountIds, Actions)
}
\arguments{
\item{QueueUrl}{[required] The URL of the Amazon SQS queue to which permissions are added.

Queue URLs and names are case-sensitive.}

\item{Label}{[required] The unique identification of the permission you're setting (for example,
\code{AliceSendMessage}). Maximum 80 characters. Allowed characters include
alphanumeric characters, hyphens (\code{-}), and underscores (\verb{_}).}

\item{AWSAccountIds}{[required] The AWS account number of the
\href{https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P}{principal}
who is given permission. The principal must have an AWS account, but
does not need to be signed up for Amazon SQS. For information about
locating the AWS account identification, see \href{https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html#sqs-api-request-authentication}{Your AWS Identifiers}
in the \emph{Amazon Simple Queue Service Developer Guide}.}

\item{Actions}{[required] The action the client wants to allow for the specified principal. Valid
values: the name of any action or \code{*}.

For more information about these actions, see \href{https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-overview-of-managing-access.html}{Overview of Managing Access Permissions to Your Amazon Simple Queue Service Resource}
in the \emph{Amazon Simple Queue Service Developer Guide}.

Specifying \code{SendMessage}, \code{DeleteMessage}, or \code{ChangeMessageVisibility}
for \code{ActionName.n} also grants permissions for the corresponding batch
versions of those actions: \code{SendMessageBatch}, \code{DeleteMessageBatch}, and
\code{ChangeMessageVisibilityBatch}.}
}
\description{
Adds a permission to a queue for a specific
\href{https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P}{principal}.
This allows sharing access to the queue.

When you create a queue, you have full control access rights for the
queue. Only you, the owner of the queue, can grant or deny permissions
to the queue. For more information about these permissions, see \href{https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-iam-policies.html#write-messages-to-shared-queue}{Allow Developers to Write Messages to a Shared Queue}
in the \emph{Amazon Simple Queue Service Developer Guide}.
\itemize{
\item \code{AddPermission} generates a policy for you. You can use
\verb{<a>SetQueueAttributes</a>} to upload your policy. For more
information, see \href{https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html}{Using Custom Policies with the Amazon SQS Access Policy Language}
in the \emph{Amazon Simple Queue Service Developer Guide}.
\item An Amazon SQS policy can have a maximum of 7 actions.
\item To remove the ability to change queue permissions, you must deny
permission to the \code{AddPermission}, \code{RemovePermission}, and
\code{SetQueueAttributes} actions in your IAM policy.
}

Some actions take lists of parameters. These lists are specified using
the \code{param.n} notation. Values of \code{n} are integers starting from 1. For
example, a parameter list with two elements looks like this:

\verb{&amp;AttributeName.1=first}

\verb{&amp;AttributeName.2=second}

Cross-account permissions don't apply to this action. For more
information, see \href{https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name}{Grant cross-account permissions to a role and a user name}
in the \emph{Amazon Simple Queue Service Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$add_permission(
  QueueUrl = "string",
  Label = "string",
  AWSAccountIds = list(
    "string"
  ),
  Actions = list(
    "string"
  )
)
}
}

\keyword{internal}
