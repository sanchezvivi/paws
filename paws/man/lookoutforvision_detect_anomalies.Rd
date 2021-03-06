% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lookoutforvision_operations.R
\name{lookoutforvision_detect_anomalies}
\alias{lookoutforvision_detect_anomalies}
\title{Detects anomalies in an image that you supply}
\usage{
lookoutforvision_detect_anomalies(ProjectName, ModelVersion, Body,
  ContentType)
}
\arguments{
\item{ProjectName}{[required] The name of the project that contains the model version that you want to
use.}

\item{ModelVersion}{[required] The version of the model that you want to use.}

\item{Body}{[required] The unencrypted image bytes that you want to analyze.}

\item{ContentType}{[required] The type of the image passed in \code{Body}. Valid values are \code{image/png}
(PNG format images) and \code{image/jpeg} (JPG format images).}
}
\description{
Detects anomalies in an image that you supply.

The response from \code{DetectAnomalies} includes a boolean prediction that
the image contains one or more anomalies and a confidence value for the
prediction.

Before calling \code{DetectAnomalies}, you must first start your model with
the StartModel operation. You are charged for the amount of time, in
minutes, that a model runs and for the number of anomaly detection units
that your model uses. If you are not using a model, use the StopModel
operation to stop your model.
}
\section{Request syntax}{
\preformatted{svc$detect_anomalies(
  ProjectName = "string",
  ModelVersion = "string",
  Body = raw,
  ContentType = "string"
)
}
}

\keyword{internal}
