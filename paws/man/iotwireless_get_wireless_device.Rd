% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotwireless_operations.R
\name{iotwireless_get_wireless_device}
\alias{iotwireless_get_wireless_device}
\title{Gets information about a wireless device}
\usage{
iotwireless_get_wireless_device(Identifier, IdentifierType)
}
\arguments{
\item{Identifier}{[required] The identifier of the wireless device to get.}

\item{IdentifierType}{[required] The type of identifier used in \code{identifier}.}
}
\description{
Gets information about a wireless device.
}
\section{Request syntax}{
\preformatted{svc$get_wireless_device(
  Identifier = "string",
  IdentifierType = "WirelessDeviceId"|"DevEui"|"ThingName"
)
}
}

\keyword{internal}
