% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_associate_assessment_report_evidence_folder}
\alias{auditmanager_associate_assessment_report_evidence_folder}
\title{Associates an evidence folder to the specified assessment report in AWS
Audit Manager}
\usage{
auditmanager_associate_assessment_report_evidence_folder(assessmentId,
  evidenceFolderId)
}
\arguments{
\item{assessmentId}{[required] The identifier for the specified assessment.}

\item{evidenceFolderId}{[required] The identifier for the folder in which evidence is stored.}
}
\description{
Associates an evidence folder to the specified assessment report in AWS
Audit Manager.
}
\section{Request syntax}{
\preformatted{svc$associate_assessment_report_evidence_folder(
  assessmentId = "string",
  evidenceFolderId = "string"
)
}
}

\keyword{internal}
