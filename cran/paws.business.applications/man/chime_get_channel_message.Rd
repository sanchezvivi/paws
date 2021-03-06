% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_get_channel_message}
\alias{chime_get_channel_message}
\title{Gets the full details of a channel message}
\usage{
chime_get_channel_message(ChannelArn, MessageId)
}
\arguments{
\item{ChannelArn}{[required] The ARN of the channel.}

\item{MessageId}{[required] The ID of the message.}
}
\description{
Gets the full details of a channel message.
}
\section{Request syntax}{
\preformatted{svc$get_channel_message(
  ChannelArn = "string",
  MessageId = "string"
)
}
}

\keyword{internal}
