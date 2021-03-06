% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_get_sip_media_application_logging_configuration}
\alias{chime_get_sip_media_application_logging_configuration}
\title{Returns the logging configuration for the specified SIP media
application}
\usage{
chime_get_sip_media_application_logging_configuration(
  SipMediaApplicationId)
}
\arguments{
\item{SipMediaApplicationId}{[required] The ID of the SIP media application.}
}
\description{
Returns the logging configuration for the specified SIP media
application.
}
\section{Request syntax}{
\preformatted{svc$get_sip_media_application_logging_configuration(
  SipMediaApplicationId = "string"
)
}
}

\keyword{internal}
