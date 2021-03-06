% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_describe_job}
\alias{s3control_describe_job}
\title{Retrieves the configuration parameters and status for a Batch Operations
job}
\usage{
s3control_describe_job(AccountId, JobId)
}
\arguments{
\item{AccountId}{[required]}

\item{JobId}{[required] The ID for the job whose information you want to retrieve.}
}
\description{
Retrieves the configuration parameters and status for a Batch Operations
job. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html}{S3 Batch Operations}
in the \emph{Amazon Simple Storage Service Developer Guide}.

Related actions include:
\itemize{
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html}{CreateJob}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html}{ListJobs}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html}{UpdateJobPriority}
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html}{UpdateJobStatus}
}
}
\section{Request syntax}{
\preformatted{svc$describe_job(
  AccountId = "string",
  JobId = "string"
)
}
}

\keyword{internal}
