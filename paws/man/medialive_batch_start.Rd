% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_batch_start}
\alias{medialive_batch_start}
\title{Starts existing resources}
\usage{
medialive_batch_start(ChannelIds, MultiplexIds)
}
\arguments{
\item{ChannelIds}{List of channel IDs}

\item{MultiplexIds}{List of multiplex IDs}
}
\description{
Starts existing resources
}
\section{Request syntax}{
\preformatted{svc$batch_start(
  ChannelIds = list(
    "string"
  ),
  MultiplexIds = list(
    "string"
  )
)
}
}

\keyword{internal}
