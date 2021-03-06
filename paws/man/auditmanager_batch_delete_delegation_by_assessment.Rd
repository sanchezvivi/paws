% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_batch_delete_delegation_by_assessment}
\alias{auditmanager_batch_delete_delegation_by_assessment}
\title{Deletes the delegations in the specified AWS Audit Manager assessment}
\usage{
auditmanager_batch_delete_delegation_by_assessment(delegationIds,
  assessmentId)
}
\arguments{
\item{delegationIds}{[required] The identifiers for the specified delegations.}

\item{assessmentId}{[required] The identifier for the specified assessment.}
}
\description{
Deletes the delegations in the specified AWS Audit Manager assessment.
}
\section{Request syntax}{
\preformatted{svc$batch_delete_delegation_by_assessment(
  delegationIds = list(
    "string"
  ),
  assessmentId = "string"
)
}
}

\keyword{internal}
