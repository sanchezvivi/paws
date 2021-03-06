% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_delete_endpoint}
\alias{comprehend_delete_endpoint}
\title{Deletes a model-specific endpoint for a previously-trained custom model}
\usage{
comprehend_delete_endpoint(EndpointArn)
}
\arguments{
\item{EndpointArn}{[required] The Amazon Resource Number (ARN) of the endpoint being deleted.}
}
\description{
Deletes a model-specific endpoint for a previously-trained custom model.
All endpoints must be deleted in order for the model to be deleted.
}
\section{Request syntax}{
\preformatted{svc$delete_endpoint(
  EndpointArn = "string"
)
}
}

\keyword{internal}
