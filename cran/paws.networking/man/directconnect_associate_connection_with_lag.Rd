% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directconnect_operations.R
\name{directconnect_associate_connection_with_lag}
\alias{directconnect_associate_connection_with_lag}
\title{Associates an existing connection with a link aggregation group (LAG)}
\usage{
directconnect_associate_connection_with_lag(connectionId, lagId)
}
\arguments{
\item{connectionId}{[required] The ID of the connection.}

\item{lagId}{[required] The ID of the LAG with which to associate the connection.}
}
\description{
Associates an existing connection with a link aggregation group (LAG).
The connection is interrupted and re-established as a member of the LAG
(connectivity to AWS is interrupted). The connection must be hosted on
the same AWS Direct Connect endpoint as the LAG, and its bandwidth must
match the bandwidth for the LAG. You can re-associate a connection
that's currently associated with a different LAG; however, if removing
the connection would cause the original LAG to fall below its setting
for minimum number of operational connections, the request fails.

Any virtual interfaces that are directly associated with the connection
are automatically re-associated with the LAG. If the connection was
originally associated with a different LAG, the virtual interfaces
remain associated with the original LAG.

For interconnects, any hosted connections are automatically
re-associated with the LAG. If the interconnect was originally
associated with a different LAG, the hosted connections remain
associated with the original LAG.
}
\section{Request syntax}{
\preformatted{svc$associate_connection_with_lag(
  connectionId = "string",
  lagId = "string"
)
}
}

\keyword{internal}
