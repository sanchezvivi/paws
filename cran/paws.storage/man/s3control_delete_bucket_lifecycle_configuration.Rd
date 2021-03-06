% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_delete_bucket_lifecycle_configuration}
\alias{s3control_delete_bucket_lifecycle_configuration}
\title{This API action deletes an Amazon S3 on Outposts bucket's lifecycle
configuration}
\usage{
s3control_delete_bucket_lifecycle_configuration(AccountId, Bucket)
}
\arguments{
\item{AccountId}{[required] The account ID of the lifecycle configuration to delete.}

\item{Bucket}{[required] Specifies the bucket.

For using this parameter with Amazon S3 on Outposts with the REST API,
you must specify the name and the x-amz-outpost-id as well.

For using this parameter with S3 on Outposts with the AWS SDK and CLI,
you must specify the ARN of the bucket accessed in the format
\verb{arn:aws:s3-outposts:&lt;Region&gt;:&lt;account-id&gt;:outpost/&lt;outpost-id&gt;/bucket/&lt;my-bucket-name&gt;}.
For example, to access the bucket \code{reports} through outpost \code{my-outpost}
owned by account \code{123456789012} in Region \code{us-west-2}, use the URL
encoding of
\code{arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports}.
The value must be URL encoded.}
}
\description{
This API action deletes an Amazon S3 on Outposts bucket's lifecycle
configuration. To delete an S3 bucket's lifecycle configuration, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html}{DeleteBucketLifecycle}
in the \emph{Amazon Simple Storage Service API}.

Deletes the lifecycle configuration from the specified Outposts bucket.
Amazon S3 on Outposts removes all the lifecycle configuration rules in
the lifecycle subresource associated with the bucket. Your objects never
expire, and Amazon S3 on Outposts no longer automatically deletes any
objects on the basis of rules contained in the deleted lifecycle
configuration. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html}{Using Amazon S3 on Outposts}
in \emph{Amazon Simple Storage Service Developer Guide}.

To use this operation, you must have permission to perform the
\code{s3-outposts:DeleteLifecycleConfiguration} action. By default, the
bucket owner has this permission and the Outposts bucket owner can grant
this permission to others.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of \code{x-amz-outpost-id} to be passed with the request
and an S3 on Outposts endpoint hostname prefix instead of \code{s3-control}.
For an example of the request syntax for Amazon S3 on Outposts that uses
the S3 on Outposts endpoint hostname prefix and the \code{x-amz-outpost-id}
derived using the access point ARN, see the
\href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples}{Examples}
section.

For more information about object expiration, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions}{Elements to Describe Lifecycle Actions}.

Related actions include:
\itemize{
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html}{PutBucketLifecycleConfiguration}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html}{GetBucketLifecycleConfiguration}
}
}
\section{Request syntax}{
\preformatted{svc$delete_bucket_lifecycle_configuration(
  AccountId = "string",
  Bucket = "string"
)
}
}

\keyword{internal}
