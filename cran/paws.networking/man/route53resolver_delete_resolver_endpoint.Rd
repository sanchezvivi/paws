% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53resolver_operations.R
\name{route53resolver_delete_resolver_endpoint}
\alias{route53resolver_delete_resolver_endpoint}
\title{Deletes a Resolver endpoint}
\usage{
route53resolver_delete_resolver_endpoint(ResolverEndpointId)
}
\arguments{
\item{ResolverEndpointId}{[required] The ID of the Resolver endpoint that you want to delete.}
}
\description{
Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint
depends on whether it's an inbound or an outbound Resolver endpoint:
\itemize{
\item \strong{Inbound}: DNS queries from your network are no longer routed to
the DNS service for the specified VPC.
\item \strong{Outbound}: DNS queries from a VPC are no longer routed to your
network.
}
}
\section{Request syntax}{
\preformatted{svc$delete_resolver_endpoint(
  ResolverEndpointId = "string"
)
}
}

\keyword{internal}
