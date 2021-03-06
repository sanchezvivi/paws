% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_get_evidence_folder}
\alias{auditmanager_get_evidence_folder}
\title{Returns an evidence folder from the specified assessment in AWS Audit
Manager}
\usage{
auditmanager_get_evidence_folder(assessmentId, controlSetId,
  evidenceFolderId)
}
\arguments{
\item{assessmentId}{[required] The identifier for the specified assessment.}

\item{controlSetId}{[required] The identifier for the specified control set.}

\item{evidenceFolderId}{[required] The identifier for the folder in which the evidence is stored.}
}
\description{
Returns an evidence folder from the specified assessment in AWS Audit
Manager.
}
\section{Request syntax}{
\preformatted{svc$get_evidence_folder(
  assessmentId = "string",
  controlSetId = "string",
  evidenceFolderId = "string"
)
}
}

\keyword{internal}
