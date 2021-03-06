% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_create_sip_media_application}
\alias{chime_create_sip_media_application}
\title{Creates a SIP media application}
\usage{
chime_create_sip_media_application(AwsRegion, Name, Endpoints)
}
\arguments{
\item{AwsRegion}{[required] AWS Region assigned to the SIP media application.}

\item{Name}{The SIP media application name.}

\item{Endpoints}{[required] List of endpoints (Lambda Amazon Resource Names) specified for the SIP
media application. Currently, only one endpoint is supported.}
}
\description{
Creates a SIP media application.
}
\section{Request syntax}{
\preformatted{svc$create_sip_media_application(
  AwsRegion = "string",
  Name = "string",
  Endpoints = list(
    list(
      LambdaArn = "string"
    )
  )
)
}
}

\keyword{internal}
