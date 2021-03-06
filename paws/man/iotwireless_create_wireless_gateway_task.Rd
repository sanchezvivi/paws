% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotwireless_operations.R
\name{iotwireless_create_wireless_gateway_task}
\alias{iotwireless_create_wireless_gateway_task}
\title{Creates a task for a wireless gateway}
\usage{
iotwireless_create_wireless_gateway_task(Id,
  WirelessGatewayTaskDefinitionId)
}
\arguments{
\item{Id}{[required] The ID of the resource to update.}

\item{WirelessGatewayTaskDefinitionId}{[required] The ID of the WirelessGatewayTaskDefinition.}
}
\description{
Creates a task for a wireless gateway.
}
\section{Request syntax}{
\preformatted{svc$create_wireless_gateway_task(
  Id = "string",
  WirelessGatewayTaskDefinitionId = "string"
)
}
}

\keyword{internal}
