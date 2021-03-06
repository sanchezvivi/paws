% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_associate_approved_origin}
\alias{connect_associate_approved_origin}
\title{This API is in preview release for Amazon Connect and is subject to
change}
\usage{
connect_associate_approved_origin(InstanceId, Origin)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance.}

\item{Origin}{[required] The domain to add to your allow list.}
}
\description{
This API is in preview release for Amazon Connect and is subject to
change.

Associates an approved origin to an Amazon Connect instance.
}
\section{Request syntax}{
\preformatted{svc$associate_approved_origin(
  InstanceId = "string",
  Origin = "string"
)
}
}

\keyword{internal}
