% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_delete_bucket_replication}
\alias{s3_delete_bucket_replication}
\title{Deletes the replication configuration from the bucket}
\usage{
s3_delete_bucket_replication(Bucket)
}
\arguments{
\item{Bucket}{[required] The bucket name.

It can take a while to propagate the deletion of a replication
configuration to all Amazon S3 systems.}
}
\description{
Deletes the replication configuration from the bucket. For information
about replication configuration, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html}{Cross-Region Replication (CRR)} in the
\emph{Amazon S3 Developer Guide}.
}
\section{Request syntax}{
\preformatted{s3$delete_bucket_replication(
  Bucket = "string"
)
}
}

\examples{
# The following example deletes replication configuration set on bucket.
\donttest{s3$delete_bucket_replication(
  Bucket = "example"
)}

}
\keyword{internal}