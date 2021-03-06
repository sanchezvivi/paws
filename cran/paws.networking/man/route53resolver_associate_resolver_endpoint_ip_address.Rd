% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53resolver_operations.R
\name{route53resolver_associate_resolver_endpoint_ip_address}
\alias{route53resolver_associate_resolver_endpoint_ip_address}
\title{Adds IP addresses to an inbound or an outbound Resolver endpoint}
\usage{
route53resolver_associate_resolver_endpoint_ip_address(
  ResolverEndpointId, IpAddress)
}
\arguments{
\item{ResolverEndpointId}{[required] The ID of the Resolver endpoint that you want to associate IP addresses
with.}

\item{IpAddress}{[required] Either the IPv4 address that you want to add to a Resolver endpoint or a
subnet ID. If you specify a subnet ID, Resolver chooses an IP address
for you from the available IPs in the specified subnet.}
}
\description{
Adds IP addresses to an inbound or an outbound Resolver endpoint. If you
want to add more than one IP address, submit one
\code{AssociateResolverEndpointIpAddress} request for each IP address.

To remove an IP address from an endpoint, see
\href{https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html}{DisassociateResolverEndpointIpAddress}.
}
\section{Request syntax}{
\preformatted{svc$associate_resolver_endpoint_ip_address(
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
