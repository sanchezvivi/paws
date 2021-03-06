% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_describe_replication_subnet_groups}
\alias{databasemigrationservice_describe_replication_subnet_groups}
\title{Returns information about the replication subnet groups}
\usage{
databasemigrationservice_describe_replication_subnet_groups(Filters,
  MaxRecords, Marker)
}
\arguments{
\item{Filters}{Filters applied to replication subnet groups.

Valid filter names: replication-subnet-group-id}

\item{MaxRecords}{The maximum number of records to include in the response. If more
records exist than the specified \code{MaxRecords} value, a pagination token
called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.}

\item{Marker}{An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by \code{MaxRecords}.}
}
\description{
Returns information about the replication subnet groups.
}
\section{Request syntax}{
\preformatted{svc$describe_replication_subnet_groups(
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxRecords = 123,
  Marker = "string"
)
}
}

\examples{
\dontrun{
# Returns information about the replication subnet groups.
svc$describe_replication_subnet_groups(
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string",
        "string"
      )
    )
  ),
  Marker = "",
  MaxRecords = 123L
)
}

}
\keyword{internal}
