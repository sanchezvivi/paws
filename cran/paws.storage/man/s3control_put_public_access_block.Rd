% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_put_public_access_block}
\alias{s3control_put_public_access_block}
\title{Put public access block}
\usage{
s3control_put_public_access_block(PublicAccessBlockConfiguration,
  AccountId)
}
\arguments{
\item{PublicAccessBlockConfiguration}{[required]}

\item{AccountId}{[required]}
}
\description{
Put public access block
}
\section{Request syntax}{
\preformatted{svc$put_public_access_block(
  PublicAccessBlockConfiguration = list(
    BlockPublicAcls = TRUE|FALSE,
    IgnorePublicAcls = TRUE|FALSE,
    BlockPublicPolicy = TRUE|FALSE,
    RestrictPublicBuckets = TRUE|FALSE
  ),
  AccountId = "string"
)
}
}

\keyword{internal}