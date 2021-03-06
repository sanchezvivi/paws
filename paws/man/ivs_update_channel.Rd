% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivs_operations.R
\name{ivs_update_channel}
\alias{ivs_update_channel}
\title{Updates a channel's configuration}
\usage{
ivs_update_channel(arn, name, latencyMode, type, authorized)
}
\arguments{
\item{arn}{[required] ARN of the channel to be updated.}

\item{name}{Channel name.}

\item{latencyMode}{Channel latency mode. Default: \code{LOW}.}

\item{type}{Channel type, which determines the allowable resolution and bitrate. \emph{If
you exceed the allowable resolution or bitrate, the stream probably will
disconnect immediately.} Valid values:
\itemize{
\item \code{STANDARD}: Multiple qualities are generated from the original
input, to automatically give viewers the best experience for their
devices and network conditions. Vertical resolution can be up to
1080 and bitrate can be up to 8.5 Mbps.
\item \code{BASIC}: Amazon IVS delivers the original input to viewers. The
viewer’s video-quality choice is limited to the original input.
Vertical resolution can be up to 480 and bitrate can be up to 1.5
Mbps.
}

Default: \code{STANDARD}.}

\item{authorized}{Whether the channel is authorized. Default: \code{false}.}
}
\description{
Updates a channel's configuration. This does not affect an ongoing
stream of this channel. You must stop and restart the stream for the
changes to take effect.
}
\section{Request syntax}{
\preformatted{svc$update_channel(
  arn = "string",
  name = "string",
  latencyMode = "NORMAL"|"LOW",
  type = "BASIC"|"STANDARD",
  authorized = TRUE|FALSE
)
}
}

\keyword{internal}
