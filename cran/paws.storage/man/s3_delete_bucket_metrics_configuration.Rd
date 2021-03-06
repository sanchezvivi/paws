% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_delete_bucket_metrics_configuration}
\alias{s3_delete_bucket_metrics_configuration}
\title{Deletes a metrics configuration for the Amazon CloudWatch request
metrics (specified by the metrics configuration ID) from the bucket}
\usage{
s3_delete_bucket_metrics_configuration(Bucket, Id, ExpectedBucketOwner)
}
\arguments{
\item{Bucket}{[required] The name of the bucket containing the metrics configuration to delete.}

\item{Id}{[required] The ID used to identify the metrics configuration.}

\item{ExpectedBucketOwner}{The account id of the expected bucket owner. If the bucket is owned by a
different account, the request will fail with an HTTP
\verb{403 (Access Denied)} error.}
}
\description{
Deletes a metrics configuration for the Amazon CloudWatch request
metrics (specified by the metrics configuration ID) from the bucket.
Note that this doesn't include the daily storage metrics.

To use this operation, you must have permissions to perform the
\code{s3:PutMetricsConfiguration} action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources}{Permissions Related to Bucket Subresource Operations}
and \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html}{Managing Access Permissions to Your Amazon S3 Resources}.

For information about CloudWatch request metrics for Amazon S3, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html}{Monitoring Metrics with Amazon CloudWatch}.

The following operations are related to
\code{DeleteBucketMetricsConfiguration}:
\itemize{
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html}{GetBucketMetricsConfiguration}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html}{PutBucketMetricsConfiguration}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html}{ListBucketMetricsConfigurations}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html}{Monitoring Metrics with Amazon CloudWatch}
}
}
\section{Request syntax}{
\preformatted{svc$delete_bucket_metrics_configuration(
  Bucket = "string",
  Id = "string",
  ExpectedBucketOwner = "string"
)
}
}

\keyword{internal}
