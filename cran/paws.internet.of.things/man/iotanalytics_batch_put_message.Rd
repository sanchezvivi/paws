% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotanalytics_operations.R
\name{iotanalytics_batch_put_message}
\alias{iotanalytics_batch_put_message}
\title{Sends messages to a channel}
\usage{
iotanalytics_batch_put_message(channelName, messages)
}
\arguments{
\item{channelName}{[required] The name of the channel where the messages are sent.}

\item{messages}{[required] The list of messages to be sent. Each message has the format: \{
"messageId": "string", "payload": "string"\}.

The field names of message payloads (data) that you send to AWS IoT
Analytics:
\itemize{
\item Must contain only alphanumeric characters and undescores (\\_). No
other special characters are allowed.
\item Must begin with an alphabetic character or single underscore (\\_).
\item Cannot contain hyphens (-).
\item In regular expression terms:
"^[A-Za-z\\\emph{]([A-Za-z0-9]*|[A-Za-z0-9][A-Za-z0-9\\}]*)$".
\item Cannot be more than 255 characters.
\item Are case insensitive. (Fields named foo and FOO in the same payload
are considered duplicates.)
}

For example, \{"temp\\_01": 29\} or \{"\\_temp\\_01": 29\} are valid, but
\{"temp-01": 29\}, \{"01\\\emph{temp": 29\} or \{"\\}\\_temp\\_01": 29\} are invalid in
message payloads.}
}
\description{
Sends messages to a channel.
}
\section{Request syntax}{
\preformatted{svc$batch_put_message(
  channelName = "string",
  messages = list(
    list(
      messageId = "string",
      payload = raw
    )
  )
)
}
}

\keyword{internal}
