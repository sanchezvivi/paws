% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotwireless_operations.R
\name{iotwireless_get_wireless_device_statistics}
\alias{iotwireless_get_wireless_device_statistics}
\title{Gets operating information about a wireless device}
\usage{
iotwireless_get_wireless_device_statistics(WirelessDeviceId)
}
\arguments{
\item{WirelessDeviceId}{[required] The ID of the wireless device for which to get the data.}
}
\description{
Gets operating information about a wireless device.
}
\section{Request syntax}{
\preformatted{svc$get_wireless_device_statistics(
  WirelessDeviceId = "string"
)
}
}

\keyword{internal}
