% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sfn_operations.R
\name{sfn_send_task_failure}
\alias{sfn_send_task_failure}
\title{Used by activity workers and task states using the callback pattern to
report that the task identified by the taskToken failed}
\usage{
sfn_send_task_failure(taskToken, error, cause)
}
\arguments{
\item{taskToken}{[required] The token that represents this task. Task tokens are generated by Step
Functions when tasks are assigned to a worker, or in the \href{https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html}{context object}
when a workflow enters a task state. See
GetActivityTaskOutput$taskToken.}

\item{error}{The error code of the failure.}

\item{cause}{A more detailed explanation of the cause of the failure.}
}
\description{
Used by activity workers and task states using the
\href{https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token}{callback}
pattern to report that the task identified by the \code{taskToken} failed.
}
\section{Request syntax}{
\preformatted{svc$send_task_failure(
  taskToken = "string",
  error = "string",
  cause = "string"
)
}
}

\keyword{internal}
