% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/groundstation_operations.R
\name{groundstation_update_config}
\alias{groundstation_update_config}
\title{Updates the Config used when scheduling contacts}
\usage{
groundstation_update_config(configData, configId, configType, name)
}
\arguments{
\item{configData}{[required] Parameters of a \code{Config}.}

\item{configId}{[required] UUID of a \code{Config}.}

\item{configType}{[required] Type of a \code{Config}.}

\item{name}{[required] Name of a \code{Config}.}
}
\description{
Updates the \code{Config} used when scheduling contacts.

Updating a \code{Config} will not update the execution parameters for
existing future contacts scheduled with this \code{Config}.
}
\section{Request syntax}{
\preformatted{svc$update_config(
  configData = list(
    antennaDownlinkConfig = list(
      spectrumConfig = list(
        bandwidth = list(
          units = "GHz"|"MHz"|"kHz",
          value = 123.0
        ),
        centerFrequency = list(
          units = "GHz"|"MHz"|"kHz",
          value = 123.0
        ),
        polarization = "LEFT_HAND"|"NONE"|"RIGHT_HAND"
      )
    ),
    antennaDownlinkDemodDecodeConfig = list(
      decodeConfig = list(
        unvalidatedJSON = "string"
      ),
      demodulationConfig = list(
        unvalidatedJSON = "string"
      ),
      spectrumConfig = list(
        bandwidth = list(
          units = "GHz"|"MHz"|"kHz",
          value = 123.0
        ),
        centerFrequency = list(
          units = "GHz"|"MHz"|"kHz",
          value = 123.0
        ),
        polarization = "LEFT_HAND"|"NONE"|"RIGHT_HAND"
      )
    ),
    antennaUplinkConfig = list(
      spectrumConfig = list(
        centerFrequency = list(
          units = "GHz"|"MHz"|"kHz",
          value = 123.0
        ),
        polarization = "LEFT_HAND"|"NONE"|"RIGHT_HAND"
      ),
      targetEirp = list(
        units = "dBW",
        value = 123.0
      ),
      transmitDisabled = TRUE|FALSE
    ),
    dataflowEndpointConfig = list(
      dataflowEndpointName = "string",
      dataflowEndpointRegion = "string"
    ),
    trackingConfig = list(
      autotrack = "PREFERRED"|"REMOVED"|"REQUIRED"
    ),
    uplinkEchoConfig = list(
      antennaUplinkConfigArn = "string",
      enabled = TRUE|FALSE
    )
  ),
  configId = "string",
  configType = "antenna-downlink"|"antenna-downlink-demod-decode"|"antenna-uplink"|"dataflow-endpoint"|"tracking"|"uplink-echo",
  name = "string"
)
}
}

\keyword{internal}
