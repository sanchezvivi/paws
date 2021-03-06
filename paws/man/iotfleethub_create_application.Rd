% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotfleethub_operations.R
\name{iotfleethub_create_application}
\alias{iotfleethub_create_application}
\title{Creates a Fleet Hub for AWS IoT Device Management web application}
\usage{
iotfleethub_create_application(applicationName, applicationDescription,
  clientToken, roleArn, tags)
}
\arguments{
\item{applicationName}{[required] The name of the web application.}

\item{applicationDescription}{An optional description of the web application.}

\item{clientToken}{A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.}

\item{roleArn}{[required] The ARN of the role that the web application assumes when it interacts
with AWS IoT Core.

The name of the role must be in the form
\verb{AWSIotFleetHub_<i>random_string</i> }.}

\item{tags}{A set of key/value pairs that you can use to manage the web application
resource.}
}
\description{
Creates a Fleet Hub for AWS IoT Device Management web application.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.
}
\section{Request syntax}{
\preformatted{svc$create_application(
  applicationName = "string",
  applicationDescription = "string",
  clientToken = "string",
  roleArn = "string",
  tags = list(
    "string"
  )
)
}
}

\keyword{internal}
