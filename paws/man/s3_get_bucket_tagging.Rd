% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_tagging}
\alias{s3_get_bucket_tagging}
\title{Returns the tag set associated with the bucket}
\usage{
s3_get_bucket_tagging(Bucket, ExpectedBucketOwner)
}
\arguments{
\item{Bucket}{[required] The name of the bucket for which to get the tagging information.}

\item{ExpectedBucketOwner}{The account id of the expected bucket owner. If the bucket is owned by a
different account, the request will fail with an HTTP
\verb{403 (Access Denied)} error.}
}
\description{
Returns the tag set associated with the bucket.

To use this operation, you must have permission to perform the
\code{s3:GetBucketTagging} action. By default, the bucket owner has this
permission and can grant this permission to others.

\code{GetBucketTagging} has the following special error:
\itemize{
\item Error code: \code{NoSuchTagSetError}
\itemize{
\item Description: There is no tag set associated with the bucket.
}
}

The following operations are related to \code{GetBucketTagging}:
\itemize{
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html}{PutBucketTagging}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html}{DeleteBucketTagging}
}
}
\section{Request syntax}{
\preformatted{svc$get_bucket_tagging(
  Bucket = "string",
  ExpectedBucketOwner = "string"
)
}
}

\examples{
\dontrun{
# The following example returns tag set associated with a bucket
svc$get_bucket_tagging(
  Bucket = "examplebucket"
)
}

}
\keyword{internal}
