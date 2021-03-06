% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53resolver_operations.R
\name{route53resolver_disassociate_resolver_endpoint_ip_address}
\alias{route53resolver_disassociate_resolver_endpoint_ip_address}
\title{Removes IP addresses from an inbound or an outbound Resolver endpoint}
\usage{
route53resolver_disassociate_resolver_endpoint_ip_address(
  ResolverEndpointId, IpAddress)
}
\arguments{
\item{ResolverEndpointId}{[required] The ID of the Resolver endpoint that you want to disassociate an IP
address from.}

\item{IpAddress}{[required] The IPv4 address that you want to remove from a Resolver endpoint.}
}
\description{
Removes IP addresses from an inbound or an outbound Resolver endpoint.
If you want to remove more than one IP address, submit one
\code{DisassociateResolverEndpointIpAddress} request for each IP address.

To add an IP address to an endpoint, see
\href{https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html}{AssociateResolverEndpointIpAddress}.
}
\section{Request syntax}{
\preformatted{svc$disassociate_resolver_endpoint_ip_address(
  ResolverEndpointId = "string",
  IpAddress = list(
    IpId = "string",
    SubnetId = "string",
    Ip = "string"
  )
)
}
}

\keyword{internal}
