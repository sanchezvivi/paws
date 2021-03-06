% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sqs_operations.R
\name{sqs_delete_message}
\alias{sqs_delete_message}
\title{Deletes the specified message from the specified queue}
\usage{
sqs_delete_message(QueueUrl, ReceiptHandle)
}
\arguments{
\item{QueueUrl}{[required] The URL of the Amazon SQS queue from which messages are deleted.

Queue URLs and names are case-sensitive.}

\item{ReceiptHandle}{[required] The receipt handle associated with the message to delete.}
}
\description{
Deletes the specified message from the specified queue. To select the
message to delete, use the \code{ReceiptHandle} of the message (\emph{not} the
\code{MessageId} which you receive when you send the message). Amazon SQS can
delete a message from a queue even if a visibility timeout setting
causes the message to be locked by another consumer. Amazon SQS
automatically deletes messages left in a queue longer than the retention
period configured for the queue.

The \code{ReceiptHandle} is associated with a \emph{specific instance} of
receiving a message. If you receive a message more than once, the
\code{ReceiptHandle} is different each time you receive a message. When you
use the \code{DeleteMessage} action, you must provide the most recently
received \code{ReceiptHandle} for the message (otherwise, the request
succeeds, but the message might not be deleted).

For standard queues, it is possible to receive a message even after you
delete it. This might happen on rare occasions if one of the servers
which stores a copy of the message is unavailable when you send the
request to delete the message. The copy remains on the server and might
be returned to you during a subsequent receive request. You should
ensure that your application is idempotent, so that receiving a message
more than once does not cause issues.
}
\section{Request syntax}{
\preformatted{svc$delete_message(
  QueueUrl = "string",
  ReceiptHandle = "string"
)
}
}

\keyword{internal}
