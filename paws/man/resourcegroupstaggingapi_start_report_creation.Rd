% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resourcegroupstaggingapi_operations.R
\name{resourcegroupstaggingapi_start_report_creation}
\alias{resourcegroupstaggingapi_start_report_creation}
\title{Generates a report that lists all tagged resources in accounts across
your organization and tells whether each resource is compliant with the
effective tag policy}
\usage{
resourcegroupstaggingapi_start_report_creation(S3Bucket)
}
\arguments{
\item{S3Bucket}{[required] The name of the Amazon S3 bucket where the report will be stored; for
example:

\code{awsexamplebucket}

For more information on S3 bucket requirements, including an example
bucket policy, see the example S3 bucket policy on this page.}
}
\description{
Generates a report that lists all tagged resources in accounts across
your organization and tells whether each resource is compliant with the
effective tag policy. Compliance data is refreshed daily.

The generated report is saved to the following location:

\verb{s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv}

You can call this operation only from the organization's master account
and from the us-east-1 Region.
}
\section{Request syntax}{
\preformatted{svc$start_report_creation(
  S3Bucket = "string"
)
}
}

\keyword{internal}
