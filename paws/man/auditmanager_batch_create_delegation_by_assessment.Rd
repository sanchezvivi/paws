% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_batch_create_delegation_by_assessment}
\alias{auditmanager_batch_create_delegation_by_assessment}
\title{Create a batch of delegations for a specified assessment in AWS Audit
Manager}
\usage{
auditmanager_batch_create_delegation_by_assessment(
  createDelegationRequests, assessmentId)
}
\arguments{
\item{createDelegationRequests}{[required] The API request to batch create delegations in AWS Audit Manager.}

\item{assessmentId}{[required] The identifier for the specified assessment.}
}
\description{
Create a batch of delegations for a specified assessment in AWS Audit
Manager.
}
\section{Request syntax}{
\preformatted{svc$batch_create_delegation_by_assessment(
  createDelegationRequests = list(
    list(
      comment = "string",
      controlSetId = "string",
      roleArn = "string",
      roleType = "PROCESS_OWNER"|"RESOURCE_OWNER"
    )
  ),
  assessmentId = "string"
)
}
}

\keyword{internal}
