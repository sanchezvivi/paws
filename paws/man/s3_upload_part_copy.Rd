% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_upload_part_copy}
\alias{s3_upload_part_copy}
\title{Uploads a part by copying data from an existing object as data source}
\usage{
s3_upload_part_copy(Bucket, CopySource, CopySourceIfMatch,
  CopySourceIfModifiedSince, CopySourceIfNoneMatch,
  CopySourceIfUnmodifiedSince, CopySourceRange, Key, PartNumber, UploadId,
  SSECustomerAlgorithm, SSECustomerKey, SSECustomerKeyMD5,
  CopySourceSSECustomerAlgorithm, CopySourceSSECustomerKey,
  CopySourceSSECustomerKeyMD5, RequestPayer, ExpectedBucketOwner,
  ExpectedSourceBucketOwner)
}
\arguments{
\item{Bucket}{[required] The bucket name.

When using this API with an access point, you must direct requests to
the access point hostname. The access point hostname takes the form
\emph{AccessPointName}-\emph{AccountId}.s3-accesspoint.\emph{Region}.amazonaws.com.
When using this operation with an access point through the AWS SDKs, you
provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html}{Using Access Points}
in the \emph{Amazon Simple Storage Service Developer Guide}.

When using this API with Amazon S3 on Outposts, you must direct requests
to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
form
\emph{AccessPointName}-\emph{AccountId}.\emph{outpostID}.s3-outposts.\emph{Region}.amazonaws.com.
When using this operation using S3 on Outposts through the AWS SDKs, you
provide the Outposts bucket ARN in place of the bucket name. For more
information about S3 on Outposts ARNs, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html}{Using S3 on Outposts}
in the \emph{Amazon Simple Storage Service Developer Guide}.}

\item{CopySource}{[required] Specifies the source object for the copy operation. You specify the
value in one of two formats, depending on whether you want to access the
source object through an \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html}{access point}:
\itemize{
\item For objects not accessed through an access point, specify the name
of the source bucket and key of the source object, separated by a
slash (/). For example, to copy the object \code{reports/january.pdf}
from the bucket \code{awsexamplebucket}, use
\code{awsexamplebucket/reports/january.pdf}. The value must be URL
encoded.
\item For objects accessed through access points, specify the Amazon
Resource Name (ARN) of the object as accessed through the access
point, in the format
\verb{arn:aws:s3:&lt;Region&gt;:&lt;account-id&gt;:accesspoint/&lt;access-point-name&gt;/object/&lt;key&gt;}.
For example, to copy the object \code{reports/january.pdf} through access
point \code{my-access-point} owned by account \code{123456789012} in Region
\code{us-west-2}, use the URL encoding of
\code{arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf}.
The value must be URL encoded.

Amazon S3 supports copy operations using access points only when the
source and destination buckets are in the same AWS Region.

Alternatively, for objects accessed through Amazon S3 on Outposts,
specify the ARN of the object as accessed in the format
\verb{arn:aws:s3-outposts:&lt;Region&gt;:&lt;account-id&gt;:outpost/&lt;outpost-id&gt;/object/&lt;key&gt;}.
For example, to copy the object \code{reports/january.pdf} through
outpost \code{my-outpost} owned by account \code{123456789012} in Region
\code{us-west-2}, use the URL encoding of
\code{arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf}.
The value must be URL encoded.
}

To copy a specific version of an object, append
\verb{?versionId=&lt;version-id&gt;} to the value (for example,
\code{awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893}).
If you don't specify a version ID, Amazon S3 copies the latest version
of the source object.}

\item{CopySourceIfMatch}{Copies the object if its entity tag (ETag) matches the specified tag.}

\item{CopySourceIfModifiedSince}{Copies the object if it has been modified since the specified time.}

\item{CopySourceIfNoneMatch}{Copies the object if its entity tag (ETag) is different than the
specified ETag.}

\item{CopySourceIfUnmodifiedSince}{Copies the object if it hasn't been modified since the specified time.}

\item{CopySourceRange}{The range of bytes to copy from the source object. The range value must
use the form bytes=first-last, where the first and last are the
zero-based byte offsets to copy. For example, bytes=0-9 indicates that
you want to copy the first 10 bytes of the source. You can copy a range
only if the source object is greater than 5 MB.}

\item{Key}{[required] Object key for which the multipart upload was initiated.}

\item{PartNumber}{[required] Part number of part being copied. This is a positive integer between 1
and 10,000.}

\item{UploadId}{[required] Upload ID identifying the multipart upload whose part is being copied.}

\item{SSECustomerAlgorithm}{Specifies the algorithm to use to when encrypting the object (for
example, AES256).}

\item{SSECustomerKey}{Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon S3 does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
\code{x-amz-server-side-encryption-customer-algorithm} header. This must be
the same encryption key specified in the initiate multipart upload
request.}

\item{SSECustomerKeyMD5}{Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to ensure
that the encryption key was transmitted without error.}

\item{CopySourceSSECustomerAlgorithm}{Specifies the algorithm to use when decrypting the source object (for
example, AES256).}

\item{CopySourceSSECustomerKey}{Specifies the customer-provided encryption key for Amazon S3 to use to
decrypt the source object. The encryption key provided in this header
must be one that was used when the source object was created.}

\item{CopySourceSSECustomerKeyMD5}{Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to ensure
that the encryption key was transmitted without error.}

\item{RequestPayer}{}

\item{ExpectedBucketOwner}{The account id of the expected destination bucket owner. If the
destination bucket is owned by a different account, the request will
fail with an HTTP \verb{403 (Access Denied)} error.}

\item{ExpectedSourceBucketOwner}{The account id of the expected source bucket owner. If the source bucket
is owned by a different account, the request will fail with an HTTP
\verb{403 (Access Denied)} error.}
}
\description{
Uploads a part by copying data from an existing object as data source.
You specify the data source by adding the request header
\code{x-amz-copy-source} in your request and a byte range by adding the
request header \code{x-amz-copy-source-range} in your request.

The minimum allowable part size for a multipart upload is 5 MB. For more
information about multipart upload limits, go to \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/qfacts.html}{Quick Facts} in
the \emph{Amazon Simple Storage Service Developer Guide}.

Instead of using an existing object as part data, you might use the
\href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html}{UploadPart}
operation and provide data in your request.

You must initiate a multipart upload before you can upload any part. In
response to your initiate request. Amazon S3 returns a unique
identifier, the upload ID, that you must include in your upload part
request.

For more information about using the \code{UploadPartCopy} operation, see the
following:
\itemize{
\item For conceptual information about multipart uploads, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html}{Uploading Objects Using Multipart Upload}
in the \emph{Amazon Simple Storage Service Developer Guide}.
\item For information about permissions required to use the multipart
upload API, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html}{Multipart Upload API and Permissions}
in the \emph{Amazon Simple Storage Service Developer Guide}.
\item For information about copying objects using a single atomic
operation vs. the multipart upload, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html}{Operations on Objects}
in the \emph{Amazon Simple Storage Service Developer Guide}.
\item For information about using server-side encryption with
customer-provided encryption keys with the UploadPartCopy operation,
see
\href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html}{CopyObject}
and
\href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html}{UploadPart}.
}

Note the following additional considerations about the request headers
\verb{x-amz-copy-source-if-match}, \verb{x-amz-copy-source-if-none-match},
\verb{x-amz-copy-source-if-unmodified-since}, and
\verb{x-amz-copy-source-if-modified-since}:
\itemize{
\item \strong{Consideration 1} - If both of the \verb{x-amz-copy-source-if-match}
and \verb{x-amz-copy-source-if-unmodified-since} headers are present in
the request as follows:

\verb{x-amz-copy-source-if-match} condition evaluates to \code{true}, and;

\verb{x-amz-copy-source-if-unmodified-since} condition evaluates to
\code{false};

Amazon S3 returns \verb{200 OK} and copies the data.
\item \strong{Consideration 2} - If both of the
\verb{x-amz-copy-source-if-none-match} and
\verb{x-amz-copy-source-if-modified-since} headers are present in the
request as follows:

\verb{x-amz-copy-source-if-none-match} condition evaluates to \code{false},
and;

\verb{x-amz-copy-source-if-modified-since} condition evaluates to \code{true};

Amazon S3 returns \verb{412 Precondition Failed} response code.
}

\strong{Versioning}

If your bucket has versioning enabled, you could have multiple versions
of the same object. By default, \code{x-amz-copy-source} identifies the
current version of the object to copy. If the current version is a
delete marker and you don't specify a versionId in the
\code{x-amz-copy-source}, Amazon S3 returns a 404 error, because the object
does not exist. If you specify versionId in the \code{x-amz-copy-source} and
the versionId is a delete marker, Amazon S3 returns an HTTP 400 error,
because you are not allowed to specify a delete marker as a version for
the \code{x-amz-copy-source}.

You can optionally specify a specific version of the source object to
copy by adding the \code{versionId} subresource as shown in the following
example:

\verb{x-amz-copy-source: /bucket/object?versionId=version id}

\strong{Special Errors}
\itemize{
\item 
\itemize{
\item \emph{Code: NoSuchUpload}
\item \emph{Cause: The specified multipart upload does not exist. The
upload ID might be invalid, or the multipart upload might have
been aborted or completed.}
\item \emph{HTTP Status Code: 404 Not Found}
}
\item 
\itemize{
\item \emph{Code: InvalidRequest}
\item \emph{Cause: The specified copy source is not supported as a
byte-range copy source.}
\item \emph{HTTP Status Code: 400 Bad Request}
}
}

\strong{Related Resources}
\itemize{
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html}{CreateMultipartUpload}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html}{UploadPart}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html}{CompleteMultipartUpload}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html}{AbortMultipartUpload}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html}{ListParts}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html}{ListMultipartUploads}
}
}
\section{Request syntax}{
\preformatted{svc$upload_part_copy(
  Bucket = "string",
  CopySource = "string",
  CopySourceIfMatch = "string",
  CopySourceIfModifiedSince = as.POSIXct(
    "2015-01-01"
  ),
  CopySourceIfNoneMatch = "string",
  CopySourceIfUnmodifiedSince = as.POSIXct(
    "2015-01-01"
  ),
  CopySourceRange = "string",
  Key = "string",
  PartNumber = 123,
  UploadId = "string",
  SSECustomerAlgorithm = "string",
  SSECustomerKey = raw,
  SSECustomerKeyMD5 = "string",
  CopySourceSSECustomerAlgorithm = "string",
  CopySourceSSECustomerKey = raw,
  CopySourceSSECustomerKeyMD5 = "string",
  RequestPayer = "requester",
  ExpectedBucketOwner = "string",
  ExpectedSourceBucketOwner = "string"
)
}
}

\examples{
\dontrun{
# The following example uploads a part of a multipart upload by copying
# data from an existing object as data source.
svc$upload_part_copy(
  Bucket = "examplebucket",
  CopySource = "/bucketname/sourceobjectkey",
  Key = "examplelargeobject",
  PartNumber = "1",
  UploadId = "exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3cq3LZSUsfjI4FI7PkP..."
)

# The following example uploads a part of a multipart upload by copying a
# specified byte range from an existing object as data source.
svc$upload_part_copy(
  Bucket = "examplebucket",
  CopySource = "/bucketname/sourceobjectkey",
  CopySourceRange = "bytes=1-100000",
  Key = "examplelargeobject",
  PartNumber = "2",
  UploadId = "exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3cq3LZSUsfjI4FI7PkP..."
)
}

}
\keyword{internal}
