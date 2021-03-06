% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_batch_disassociate_assessment_report_evidence}
\alias{auditmanager_batch_disassociate_assessment_report_evidence}
\title{Disassociates a list of evidence from the specified assessment report in
AWS Audit Manager}
\usage{
auditmanager_batch_disassociate_assessment_report_evidence(assessmentId,
  evidenceFolderId, evidenceIds)
}
\arguments{
\item{assessmentId}{[required] The identifier for the specified assessment.}

\item{evidenceFolderId}{[required] The identifier for the folder in which evidence is stored.}

\item{evidenceIds}{[required] The list of evidence identifiers.}
}
\description{
Disassociates a list of evidence from the specified assessment report in
AWS Audit Manager.
}
\section{Request syntax}{
\preformatted{svc$batch_disassociate_assessment_report_evidence(
  assessmentId = "string",
  evidenceFolderId = "string",
  evidenceIds = list(
    "string"
  )
)
}
}

\keyword{internal}
