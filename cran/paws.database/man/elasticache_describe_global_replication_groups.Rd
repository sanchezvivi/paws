% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticache_operations.R
\name{elasticache_describe_global_replication_groups}
\alias{elasticache_describe_global_replication_groups}
\title{Returns information about a particular global replication group}
\usage{
elasticache_describe_global_replication_groups(GlobalReplicationGroupId,
  MaxRecords, Marker, ShowMemberInfo)
}
\arguments{
\item{GlobalReplicationGroupId}{The name of the Global Datastore}

\item{MaxRecords}{The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a marker is included
in the response so that the remaining results can be retrieved.}

\item{Marker}{An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by \code{MaxRecords}.}

\item{ShowMemberInfo}{Returns the list of members that comprise the Global Datastore.}
}
\description{
Returns information about a particular global replication group. If no
identifier is specified, returns information about all Global
Datastores.
}
\section{Request syntax}{
\preformatted{svc$describe_global_replication_groups(
  GlobalReplicationGroupId = "string",
  MaxRecords = 123,
  Marker = "string",
  ShowMemberInfo = TRUE|FALSE
)
}
}

\keyword{internal}
