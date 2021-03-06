% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_notification}
\alias{s3_get_bucket_notification}
\title{No longer used, see GetBucketNotificationConfiguration}
\usage{
s3_get_bucket_notification(Bucket, ExpectedBucketOwner)
}
\arguments{
\item{Bucket}{[required] The name of the bucket for which to get the notification configuration.}

\item{ExpectedBucketOwner}{The account id of the expected bucket owner. If the bucket is owned by a
different account, the request will fail with an HTTP
\verb{403 (Access Denied)} error.}
}
\description{
No longer used, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html}{GetBucketNotificationConfiguration}.
}
\section{Request syntax}{
\preformatted{svc$get_bucket_notification(
  Bucket = "string",
  ExpectedBucketOwner = "string"
)
}
}

\examples{
\dontrun{
# The following example returns notification configuration set on a
# bucket.
svc$get_bucket_notification(
  Bucket = "examplebucket"
)

# The following example returns notification configuration set on a
# bucket.
svc$get_bucket_notification(
  Bucket = "examplebucket"
)
}

}
\keyword{internal}
