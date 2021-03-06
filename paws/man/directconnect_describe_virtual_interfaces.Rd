% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directconnect_operations.R
\name{directconnect_describe_virtual_interfaces}
\alias{directconnect_describe_virtual_interfaces}
\title{Displays all virtual interfaces for an AWS account}
\usage{
directconnect_describe_virtual_interfaces(connectionId,
  virtualInterfaceId)
}
\arguments{
\item{connectionId}{The ID of the connection.}

\item{virtualInterfaceId}{The ID of the virtual interface.}
}
\description{
Displays all virtual interfaces for an AWS account. Virtual interfaces
deleted fewer than 15 minutes before you make the request are also
returned. If you specify a connection ID, only the virtual interfaces
associated with the connection are returned. If you specify a virtual
interface ID, then only a single virtual interface is returned.

A virtual interface (VLAN) transmits the traffic between the AWS Direct
Connect location and the customer network.
}
\section{Request syntax}{
\preformatted{svc$describe_virtual_interfaces(
  connectionId = "string",
  virtualInterfaceId = "string"
)
}
}

\keyword{internal}
