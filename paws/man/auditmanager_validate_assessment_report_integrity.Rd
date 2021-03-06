% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_validate_assessment_report_integrity}
\alias{auditmanager_validate_assessment_report_integrity}
\title{Validates the integrity of an assessment report in AWS Audit Manager}
\usage{
auditmanager_validate_assessment_report_integrity(s3RelativePath)
}
\arguments{
\item{s3RelativePath}{[required] The relative path of the specified Amazon S3 bucket in which the
assessment report is stored.}
}
\description{
Validates the integrity of an assessment report in AWS Audit Manager.
}
\section{Request syntax}{
\preformatted{svc$validate_assessment_report_integrity(
  s3RelativePath = "string"
)
}
}

\keyword{internal}
