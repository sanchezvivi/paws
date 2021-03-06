% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sqs_operations.R
\name{sqs_untag_queue}
\alias{sqs_untag_queue}
\title{Remove cost allocation tags from the specified Amazon SQS queue}
\usage{
sqs_untag_queue(QueueUrl, TagKeys)
}
\arguments{
\item{QueueUrl}{[required] The URL of the queue.}

\item{TagKeys}{[required] The list of tags to be removed from the specified queue.}
}
\description{
Remove cost allocation tags from the specified Amazon SQS queue. For an
overview, see \href{https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html}{Tagging Your Amazon SQS Queues}
in the \emph{Amazon Simple Queue Service Developer Guide}.

Cross-account permissions don't apply to this action. For more
information, see \href{https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name}{Grant cross-account permissions to a role and a user name}
in the \emph{Amazon Simple Queue Service Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$untag_queue(
  QueueUrl = "string",
  TagKeys = list(
    "string"
  )
)
}
}

\keyword{internal}
