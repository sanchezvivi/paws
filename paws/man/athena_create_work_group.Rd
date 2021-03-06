% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/athena_operations.R
\name{athena_create_work_group}
\alias{athena_create_work_group}
\title{Creates a workgroup with the specified name}
\usage{
athena_create_work_group(Name, Configuration, Description, Tags)
}
\arguments{
\item{Name}{[required] The workgroup name.}

\item{Configuration}{The configuration for the workgroup, which includes the location in
Amazon S3 where query results are stored, the encryption configuration,
if any, used for encrypting query results, whether the Amazon CloudWatch
Metrics are enabled for the workgroup, the limit for the amount of bytes
scanned (cutoff) per query, if it is specified, and whether workgroup's
settings (specified with EnforceWorkGroupConfiguration) in the
WorkGroupConfiguration override client-side settings. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.}

\item{Description}{The workgroup description.}

\item{Tags}{A list of comma separated tags to add to the workgroup that is created.}
}
\description{
Creates a workgroup with the specified name.
}
\section{Request syntax}{
\preformatted{svc$create_work_group(
  Name = "string",
  Configuration = list(
    ResultConfiguration = list(
      OutputLocation = "string",
      EncryptionConfiguration = list(
        EncryptionOption = "SSE_S3"|"SSE_KMS"|"CSE_KMS",
        KmsKey = "string"
      )
    ),
    EnforceWorkGroupConfiguration = TRUE|FALSE,
    PublishCloudWatchMetricsEnabled = TRUE|FALSE,
    BytesScannedCutoffPerQuery = 123,
    RequesterPaysEnabled = TRUE|FALSE
  ),
  Description = "string",
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
