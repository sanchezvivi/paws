% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_delete_control}
\alias{auditmanager_delete_control}
\title{Deletes a custom control in AWS Audit Manager}
\usage{
auditmanager_delete_control(controlId)
}
\arguments{
\item{controlId}{[required] The identifier for the specified control.}
}
\description{
Deletes a custom control in AWS Audit Manager.
}
\section{Request syntax}{
\preformatted{svc$delete_control(
  controlId = "string"
)
}
}

\keyword{internal}
