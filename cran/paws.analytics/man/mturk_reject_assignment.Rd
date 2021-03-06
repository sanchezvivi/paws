% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mturk_operations.R
\name{mturk_reject_assignment}
\alias{mturk_reject_assignment}
\title{The RejectAssignment operation rejects the results of a completed
assignment}
\usage{
mturk_reject_assignment(AssignmentId, RequesterFeedback)
}
\arguments{
\item{AssignmentId}{[required] The ID of the assignment. The assignment must correspond to a HIT
created by the Requester.}

\item{RequesterFeedback}{[required] A message for the Worker, which the Worker can see in the Status section
of the web site.}
}
\description{
The \code{RejectAssignment} operation rejects the results of a completed
assignment.

You can include an optional feedback message with the rejection, which
the Worker can see in the Status section of the web site. When you
include a feedback message with the rejection, it helps the Worker
understand why the assignment was rejected, and can improve the quality
of the results the Worker submits in the future.

Only the Requester who created the HIT can reject an assignment for the
HIT.
}
\section{Request syntax}{
\preformatted{svc$reject_assignment(
  AssignmentId = "string",
  RequesterFeedback = "string"
)
}
}

\keyword{internal}
