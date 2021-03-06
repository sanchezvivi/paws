% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_batch_delete}
\alias{medialive_batch_delete}
\title{Starts delete of resources}
\usage{
medialive_batch_delete(ChannelIds, InputIds, InputSecurityGroupIds,
  MultiplexIds)
}
\arguments{
\item{ChannelIds}{List of channel IDs}

\item{InputIds}{List of input IDs}

\item{InputSecurityGroupIds}{List of input security group IDs}

\item{MultiplexIds}{List of multiplex IDs}
}
\description{
Starts delete of resources.
}
\section{Request syntax}{
\preformatted{svc$batch_delete(
  ChannelIds = list(
    "string"
  ),
  InputIds = list(
    "string"
  ),
  InputSecurityGroupIds = list(
    "string"
  ),
  MultiplexIds = list(
    "string"
  )
)
}
}

\keyword{internal}
