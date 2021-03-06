% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_describe_endpoint}
\alias{comprehend_describe_endpoint}
\title{Gets the properties associated with a specific endpoint}
\usage{
comprehend_describe_endpoint(EndpointArn)
}
\arguments{
\item{EndpointArn}{[required] The Amazon Resource Number (ARN) of the endpoint being described.}
}
\description{
Gets the properties associated with a specific endpoint. Use this
operation to get the status of an endpoint.
}
\section{Request syntax}{
\preformatted{svc$describe_endpoint(
  EndpointArn = "string"
)
}
}

\keyword{internal}
