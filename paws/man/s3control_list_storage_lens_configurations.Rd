% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_list_storage_lens_configurations}
\alias{s3control_list_storage_lens_configurations}
\title{Gets a list of Amazon S3 Storage Lens configurations}
\usage{
s3control_list_storage_lens_configurations(AccountId, NextToken)
}
\arguments{
\item{AccountId}{[required] The account ID of the requester.}

\item{NextToken}{A pagination token to request the next page of results.}
}
\description{
Gets a list of Amazon S3 Storage Lens configurations. For more
information about S3 Storage Lens, see Working with Amazon S3 Storage
Lens in the \emph{Amazon Simple Storage Service Developer Guide}.

To use this action, you must have permission to perform the
\code{s3:ListStorageLensConfigurations} action. For more information, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html#storage_lens_IAM}{Setting permissions to use Amazon S3 Storage Lens}
in the \emph{Amazon Simple Storage Service Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$list_storage_lens_configurations(
  AccountId = "string",
  NextToken = "string"
)
}
}

\keyword{internal}
