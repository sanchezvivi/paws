% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_put_job_tagging}
\alias{s3control_put_job_tagging}
\title{Sets the supplied tag-set on an S3 Batch Operations job}
\usage{
s3control_put_job_tagging(AccountId, JobId, Tags)
}
\arguments{
\item{AccountId}{[required] The AWS account ID associated with the S3 Batch Operations job.}

\item{JobId}{[required] The ID for the S3 Batch Operations job whose tags you want to replace.}

\item{Tags}{[required] The set of tags to associate with the S3 Batch Operations job.}
}
\description{
Sets the supplied tag-set on an S3 Batch Operations job.

A tag is a key-value pair. You can associate S3 Batch Operations tags
with any job by sending a PUT request against the tagging subresource
that is associated with the job. To modify the existing tag set, you can
either replace the existing tag set entirely, or make changes within the
existing tag set by retrieving the existing tag set using
\href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html}{GetJobTagging},
modify that tag set, and use this action to replace the tag set with the
one you modified. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags}{Controlling access and labeling jobs using tags}
in the \emph{Amazon Simple Storage Service Developer Guide}.
\itemize{
\item If you send this request with an empty tag set, Amazon S3 deletes
the existing tag set on the Batch Operations job. If you use this
method, you are charged for a Tier 1 Request (PUT). For more
information, see \href{https://aws.amazon.com/s3/pricing/}{Amazon S3 pricing}.
\item For deleting existing tags for your Batch Operations job, a
\href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html}{DeleteJobTagging}
request is preferred because it achieves the same result without
incurring charges.
\item A few things to consider about using tags:
\itemize{
\item Amazon S3 limits the maximum number of tags to 50 tags per job.
\item You can associate up to 50 tags with a job as long as they have
unique tag keys.
\item A tag key can be up to 128 Unicode characters in length, and tag
values can be up to 256 Unicode characters in length.
\item The key and values are case sensitive.
\item For tagging-related restrictions related to characters and
encodings, see \href{https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html}{User-Defined Tag Restrictions}
in the \emph{AWS Billing and Cost Management User Guide}.
}
}

To use this operation, you must have permission to perform the
\code{s3:PutJobTagging} action.

Related actions include:
\itemize{
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html}{CreatJob}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html}{GetJobTagging}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html}{DeleteJobTagging}
}
}
\section{Request syntax}{
\preformatted{svc$put_job_tagging(
  AccountId = "string",
  JobId = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
