% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_describe_image_version}
\alias{sagemaker_describe_image_version}
\title{Describes a version of a SageMaker image}
\usage{
sagemaker_describe_image_version(ImageName, Version)
}
\arguments{
\item{ImageName}{[required] The name of the image.}

\item{Version}{The version of the image. If not specified, the latest version is
described.}
}
\description{
Describes a version of a SageMaker image.
}
\section{Request syntax}{
\preformatted{svc$describe_image_version(
  ImageName = "string",
  Version = 123
)
}
}

\keyword{internal}
