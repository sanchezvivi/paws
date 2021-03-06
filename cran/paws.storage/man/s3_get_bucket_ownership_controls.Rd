% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_ownership_controls}
\alias{s3_get_bucket_ownership_controls}
\title{Retrieves OwnershipControls for an Amazon S3 bucket}
\usage{
s3_get_bucket_ownership_controls(Bucket, ExpectedBucketOwner)
}
\arguments{
\item{Bucket}{[required] The name of the Amazon S3 bucket whose \code{OwnershipControls} you want to
retrieve.}

\item{ExpectedBucketOwner}{The account id of the expected bucket owner. If the bucket is owned by a
different account, the request will fail with an HTTP
\verb{403 (Access Denied)} error.}
}
\description{
Retrieves \code{OwnershipControls} for an Amazon S3 bucket. To use this
operation, you must have the \code{s3:GetBucketOwnershipControls} permission.
For more information about Amazon S3 permissions, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html}{Specifying Permissions in a Policy}.

For information about Amazon S3 Object Ownership, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html}{Using Object Ownership}.

The following operations are related to \code{GetBucketOwnershipControls}:
\itemize{
\item PutBucketOwnershipControls
\item DeleteBucketOwnershipControls
}
}
\section{Request syntax}{
\preformatted{svc$get_bucket_ownership_controls(
  Bucket = "string",
  ExpectedBucketOwner = "string"
)
}
}

\keyword{internal}
