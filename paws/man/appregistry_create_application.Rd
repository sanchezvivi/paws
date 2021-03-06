% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appregistry_operations.R
\name{appregistry_create_application}
\alias{appregistry_create_application}
\title{Creates a new application that is the top-level node in a hierarchy of
related cloud resource abstractions}
\usage{
appregistry_create_application(name, description, tags, clientToken)
}
\arguments{
\item{name}{[required] The name of the application. The name must be unique in the region in
which you are creating the application.}

\item{description}{The description of the application.}

\item{tags}{Key-value pairs you can use to associate with the application.}

\item{clientToken}{[required] A unique identifier that you provide to ensure idempotency. If you retry
a request that completed successfully using the same client token and
the same parameters, the retry succeeds without performing any further
actions. If you retry a successful request using the same client token,
but one or more of the parameters are different, the retry fails.}
}
\description{
Creates a new application that is the top-level node in a hierarchy of
related cloud resource abstractions.
}
\section{Request syntax}{
\preformatted{svc$create_application(
  name = "string",
  description = "string",
  tags = list(
    "string"
  ),
  clientToken = "string"
)
}
}

\keyword{internal}
