% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotfleethub_operations.R
\name{iotfleethub_update_application}
\alias{iotfleethub_update_application}
\title{Updates information about a Fleet Hub for a AWS IoT Device Management
web application}
\usage{
iotfleethub_update_application(applicationId, applicationName,
  applicationDescription, clientToken)
}
\arguments{
\item{applicationId}{[required] The unique Id of the web application.}

\item{applicationName}{The name of the web application.}

\item{applicationDescription}{An optional description of the web application.}

\item{clientToken}{A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.}
}
\description{
Updates information about a Fleet Hub for a AWS IoT Device Management
web application.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.
}
\section{Request syntax}{
\preformatted{svc$update_application(
  applicationId = "string",
  applicationName = "string",
  applicationDescription = "string",
  clientToken = "string"
)
}
}

\keyword{internal}
