% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_put_voice_connector_origination}
\alias{chime_put_voice_connector_origination}
\title{Adds origination settings for the specified Amazon Chime Voice Connector}
\usage{
chime_put_voice_connector_origination(VoiceConnectorId, Origination)
}
\arguments{
\item{VoiceConnectorId}{[required] The Amazon Chime Voice Connector ID.}

\item{Origination}{[required] The origination setting details to add.}
}
\description{
Adds origination settings for the specified Amazon Chime Voice
Connector.

If emergency calling is configured for the Amazon Chime Voice Connector,
it must be deleted prior to turning off origination settings.
}
\section{Request syntax}{
\preformatted{svc$put_voice_connector_origination(
  VoiceConnectorId = "string",
  Origination = list(
    Routes = list(
      list(
        Host = "string",
        Port = 123,
        Protocol = "TCP"|"UDP",
        Priority = 123,
        Weight = 123
      )
    ),
    Disabled = TRUE|FALSE
  )
)
}
}

\keyword{internal}
