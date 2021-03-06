% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appconfig_operations.R
\name{appconfig_stop_deployment}
\alias{appconfig_stop_deployment}
\title{Stops a deployment}
\usage{
appconfig_stop_deployment(ApplicationId, EnvironmentId,
  DeploymentNumber)
}
\arguments{
\item{ApplicationId}{[required] The application ID.}

\item{EnvironmentId}{[required] The environment ID.}

\item{DeploymentNumber}{[required] The sequence number of the deployment.}
}
\description{
Stops a deployment. This API action works only on deployments that have
a status of \code{DEPLOYING}. This action moves the deployment to a status of
\code{ROLLED_BACK}.
}
\section{Request syntax}{
\preformatted{svc$stop_deployment(
  ApplicationId = "string",
  EnvironmentId = "string",
  DeploymentNumber = 123
)
}
}

\keyword{internal}
