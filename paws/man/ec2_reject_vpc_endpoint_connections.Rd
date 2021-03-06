% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_reject_vpc_endpoint_connections}
\alias{ec2_reject_vpc_endpoint_connections}
\title{Rejects one or more VPC endpoint connection requests to your VPC
endpoint service}
\usage{
ec2_reject_vpc_endpoint_connections(DryRun, ServiceId, VpcEndpointIds)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{ServiceId}{[required] The ID of the service.}

\item{VpcEndpointIds}{[required] The IDs of one or more VPC endpoints.}
}
\description{
Rejects one or more VPC endpoint connection requests to your VPC
endpoint service.
}
\section{Request syntax}{
\preformatted{svc$reject_vpc_endpoint_connections(
  DryRun = TRUE|FALSE,
  ServiceId = "string",
  VpcEndpointIds = list(
    "string"
  )
)
}
}

\keyword{internal}
