% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sms_operations.R
\name{sms_delete_app_replication_configuration}
\alias{sms_delete_app_replication_configuration}
\title{Deletes the replication configuration for the specified application}
\usage{
sms_delete_app_replication_configuration(appId)
}
\arguments{
\item{appId}{The ID of the application.}
}
\description{
Deletes the replication configuration for the specified application.
}
\section{Request syntax}{
\preformatted{svc$delete_app_replication_configuration(
  appId = "string"
)
}
}

\keyword{internal}
