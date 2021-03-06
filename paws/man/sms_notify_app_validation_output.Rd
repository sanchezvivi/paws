% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sms_operations.R
\name{sms_notify_app_validation_output}
\alias{sms_notify_app_validation_output}
\title{Provides information to AWS SMS about whether application validation is
successful}
\usage{
sms_notify_app_validation_output(appId, notificationContext)
}
\arguments{
\item{appId}{[required] The ID of the application.}

\item{notificationContext}{The notification information.}
}
\description{
Provides information to AWS SMS about whether application validation is
successful.
}
\section{Request syntax}{
\preformatted{svc$notify_app_validation_output(
  appId = "string",
  notificationContext = list(
    validationId = "string",
    status = "READY_FOR_VALIDATION"|"PENDING"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED",
    statusMessage = "string"
  )
)
}
}

\keyword{internal}
