% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_put_object_acl}
\alias{s3_put_object_acl}
\title{Uses the acl subresource to set the access control list (ACL)
permissions for a new or existing object in an S3 bucket}
\usage{
s3_put_object_acl(ACL, AccessControlPolicy, Bucket, ContentMD5,
  GrantFullControl, GrantRead, GrantReadACP, GrantWrite, GrantWriteACP,
  Key, RequestPayer, VersionId, ExpectedBucketOwner)
}
\arguments{
\item{ACL}{The canned ACL to apply to the object. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL}{Canned ACL}.}

\item{AccessControlPolicy}{Contains the elements that set the ACL permissions for an object per
grantee.}

\item{Bucket}{[required] The bucket name that contains the object to which you want to attach the
ACL.

When using this API with an access point, you must direct requests to
the access point hostname. The access point hostname takes the form
\emph{AccessPointName}-\emph{AccountId}.s3-accesspoint.\emph{Region}.amazonaws.com.
When using this operation with an access point through the AWS SDKs, you
provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html}{Using Access Points}
in the \emph{Amazon Simple Storage Service Developer Guide}.}

\item{ContentMD5}{The base64-encoded 128-bit MD5 digest of the data. This header must be
used as a message integrity check to verify that the request body was
not corrupted in transit. For more information, go to \href{https://www.ietf.org/rfc/rfc1864.txt}{RFC 1864.>}

For requests made using the AWS Command Line Interface (CLI) or AWS
SDKs, this field is calculated automatically.}

\item{GrantFullControl}{Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.

This action is not supported by Amazon S3 on Outposts.}

\item{GrantRead}{Allows grantee to list the objects in the bucket.

This action is not supported by Amazon S3 on Outposts.}

\item{GrantReadACP}{Allows grantee to read the bucket ACL.

This action is not supported by Amazon S3 on Outposts.}

\item{GrantWrite}{Allows grantee to create, overwrite, and delete any object in the
bucket.}

\item{GrantWriteACP}{Allows grantee to write the ACL for the applicable bucket.

This action is not supported by Amazon S3 on Outposts.}

\item{Key}{[required] Key for which the PUT operation was initiated.

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

\item{RequestPayer}{}

\item{VersionId}{VersionId used to reference a specific version of the object.}

\item{ExpectedBucketOwner}{The account id of the expected bucket owner. If the bucket is owned by a
different account, the request will fail with an HTTP
\verb{403 (Access Denied)} error.}
}
\description{
Uses the \code{acl} subresource to set the access control list (ACL)
permissions for a new or existing object in an S3 bucket. You must have
\code{WRITE_ACP} permission to set the ACL of an object. For more
information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#permissions}{What permissions can I grant?}
in the \emph{Amazon Simple Storage Service Developer Guide}.

This action is not supported by Amazon S3 on Outposts.

Depending on your application needs, you can choose to set the ACL on an
object using either the request body or the headers. For example, if you
have an existing application that updates a bucket ACL using the request
body, you can continue to use that approach. For more information, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html}{Access Control List (ACL) Overview}
in the \emph{Amazon S3 Developer Guide}.

\strong{Access Permissions}

You can set access permissions using one of the following methods:
\itemize{
\item Specify a canned ACL with the \code{x-amz-acl} request header. Amazon S3
supports a set of predefined ACLs, known as canned ACLs. Each canned
ACL has a predefined set of grantees and permissions. Specify the
canned ACL name as the value of \code{x-amz-ac}l. If you use this header,
you cannot use other access control-specific headers in your
request. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL}{Canned ACL}.
\item Specify access permissions explicitly with the \code{x-amz-grant-read},
\code{x-amz-grant-read-acp}, \code{x-amz-grant-write-acp}, and
\code{x-amz-grant-full-control} headers. When using these headers, you
specify explicit access permissions and grantees (AWS accounts or
Amazon S3 groups) who will receive the permission. If you use these
ACL-specific headers, you cannot use \code{x-amz-acl} header to set a
canned ACL. These parameters map to the set of permissions that
Amazon S3 supports in an ACL. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html}{Access Control List (ACL) Overview}.

You specify each grantee as a type=value pair, where the type is one
of the following:
\itemize{
\item \code{id} – if the value specified is the canonical user ID of an AWS
account
\item \code{uri} – if you are granting permissions to a predefined group
\item \code{emailAddress} – if the value specified is the email address of
an AWS account

Using email addresses to specify a grantee is only supported in
the following AWS Regions:
\itemize{
\item US East (N. Virginia)
\item US West (N. California)
\item US West (Oregon)
\item Asia Pacific (Singapore)
\item Asia Pacific (Sydney)
\item Asia Pacific (Tokyo)
\item Europe (Ireland)
\item South America (São Paulo)
}

For a list of all the Amazon S3 supported Regions and endpoints,
see \href{https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region}{Regions and Endpoints}
in the AWS General Reference.
}

For example, the following \code{x-amz-grant-read} header grants list
objects permission to the two AWS accounts identified by their email
addresses.

\verb{x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com" }
}

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

\strong{Grantee Values}

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:
\itemize{
\item By the person's ID:

\verb{&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser"&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt; &lt;/Grantee&gt;}

DisplayName is optional and ignored in the request.
\item By URI:

\verb{&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group"&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;}
\item By Email address:

\verb{&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="AmazonCustomerByEmail"&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;lt;/Grantee&gt;}

The grantee is resolved to the CanonicalUser and, in a response to a
GET Object acl request, appears as the CanonicalUser.

Using email addresses to specify a grantee is only supported in the
following AWS Regions:
\itemize{
\item US East (N. Virginia)
\item US West (N. California)
\item US West (Oregon)
\item Asia Pacific (Singapore)
\item Asia Pacific (Sydney)
\item Asia Pacific (Tokyo)
\item Europe (Ireland)
\item South America (São Paulo)
}

For a list of all the Amazon S3 supported Regions and endpoints, see
\href{https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region}{Regions and Endpoints}
in the AWS General Reference.
}

\strong{Versioning}

The ACL of an object is set at the object version level. By default, PUT
sets the ACL of the current version of an object. To set the ACL of a
different version, use the \code{versionId} subresource.

\strong{Related Resources}
\itemize{
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html}{CopyObject}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html}{GetObject}
}
}
\section{Request syntax}{
\preformatted{svc$put_object_acl(
  ACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"aws-exec-read"|"bucket-owner-read"|"bucket-owner-full-control",
  AccessControlPolicy = list(
    Grants = list(
      list(
        Grantee = list(
          DisplayName = "string",
          EmailAddress = "string",
          ID = "string",
          Type = "CanonicalUser"|"AmazonCustomerByEmail"|"Group",
          URI = "string"
        ),
        Permission = "FULL_CONTROL"|"WRITE"|"WRITE_ACP"|"READ"|"READ_ACP"
      )
    ),
    Owner = list(
      DisplayName = "string",
      ID = "string"
    )
  ),
  Bucket = "string",
  ContentMD5 = "string",
  GrantFullControl = "string",
  GrantRead = "string",
  GrantReadACP = "string",
  GrantWrite = "string",
  GrantWriteACP = "string",
  Key = "string",
  RequestPayer = "requester",
  VersionId = "string",
  ExpectedBucketOwner = "string"
)
}
}

\examples{
\dontrun{
# The following example adds grants to an object ACL. The first permission
# grants user1 and user2 FULL_CONTROL and the AllUsers group READ
# permission.
svc$put_object_acl(
  AccessControlPolicy = structure(
    list(),
    .Names = character(
      0
    )
  ),
  Bucket = "examplebucket",
  GrantFullControl = "emailaddress=user1@example.com,emailaddress=user2@example.com",
  GrantRead = "uri=http://acs.amazonaws.com/groups/global/AllUsers",
  Key = "HappyFace.jpg"
)
}

}
\keyword{internal}
