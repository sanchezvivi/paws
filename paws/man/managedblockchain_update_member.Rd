% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/managedblockchain_operations.R
\name{managedblockchain_update_member}
\alias{managedblockchain_update_member}
\title{Updates a member configuration with new parameters}
\usage{
managedblockchain_update_member(NetworkId, MemberId,
  LogPublishingConfiguration)
}
\arguments{
\item{NetworkId}{[required] The unique identifier of the Managed Blockchain network to which the
member belongs.}

\item{MemberId}{[required] The unique identifier of the member.}

\item{LogPublishingConfiguration}{Configuration properties for publishing to Amazon CloudWatch Logs.}
}
\description{
Updates a member configuration with new parameters.

Applies only to Hyperledger Fabric.
}
\section{Request syntax}{
\preformatted{svc$update_member(
  NetworkId = "string",
  MemberId = "string",
  LogPublishingConfiguration = list(
    Fabric = list(
      CaLogs = list(
        Cloudwatch = list(
          Enabled = TRUE|FALSE
        )
      )
    )
  )
)
}
}

\keyword{internal}
