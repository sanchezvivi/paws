% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecr_operations.R
\name{ecr_upload_layer_part}
\alias{ecr_upload_layer_part}
\title{Uploads an image layer part to Amazon ECR}
\usage{
ecr_upload_layer_part(registryId, repositoryName, uploadId,
  partFirstByte, partLastByte, layerPartBlob)
}
\arguments{
\item{registryId}{The AWS account ID associated with the registry to which you are
uploading layer parts. If you do not specify a registry, the default
registry is assumed.}

\item{repositoryName}{[required] The name of the repository to which you are uploading layer parts.}

\item{uploadId}{[required] The upload ID from a previous InitiateLayerUpload operation to associate
with the layer part upload.}

\item{partFirstByte}{[required] The position of the first byte of the layer part witin the overall image
layer.}

\item{partLastByte}{[required] The position of the last byte of the layer part within the overall image
layer.}

\item{layerPartBlob}{[required] The base64-encoded layer part payload.}
}
\description{
Uploads an image layer part to Amazon ECR.

When an image is pushed, each new image layer is uploaded in parts. The
maximum size of each image layer part can be 20971520 bytes (or about
20MB). The UploadLayerPart API is called once per each new image layer
part.

This operation is used by the Amazon ECR proxy and is not generally used
by customers for pulling and pushing images. In most cases, you should
use the \code{docker} CLI to pull, tag, and push images.
}
\section{Request syntax}{
\preformatted{svc$upload_layer_part(
  registryId = "string",
  repositoryName = "string",
  uploadId = "string",
  partFirstByte = 123,
  partLastByte = 123,
  layerPartBlob = raw
)
}
}

\keyword{internal}
