% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_update_model_version_status}
\alias{frauddetector_update_model_version_status}
\title{Updates the status of a model version}
\usage{
frauddetector_update_model_version_status(modelId, modelType,
  modelVersionNumber, status)
}
\arguments{
\item{modelId}{[required] The model ID of the model version to update.}

\item{modelType}{[required] The model type.}

\item{modelVersionNumber}{[required] The model version number.}

\item{status}{[required] The model version status.}
}
\description{
Updates the status of a model version.

You can perform the following status updates:
\enumerate{
\item Change the \code{TRAINING_COMPLETE} status to \code{ACTIVE}.
\item Change \code{ACTIVE}to \code{INACTIVE}.
}
}
\section{Request syntax}{
\preformatted{svc$update_model_version_status(
  modelId = "string",
  modelType = "ONLINE_FRAUD_INSIGHTS",
  modelVersionNumber = "string",
  status = "ACTIVE"|"INACTIVE"
)
}
}

\keyword{internal}
