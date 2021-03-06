% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_describe_certificates}
\alias{databasemigrationservice_describe_certificates}
\title{Provides a description of the certificate}
\usage{
databasemigrationservice_describe_certificates(Filters, MaxRecords,
  Marker)
}
\arguments{
\item{Filters}{Filters applied to the certificates described in the form of key-value
pairs.}

\item{MaxRecords}{The maximum number of records to include in the response. If more
records exist than the specified \code{MaxRecords} value, a pagination token
called a marker is included in the response so that the remaining
results can be retrieved.

Default: 10}

\item{Marker}{An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by \code{MaxRecords}.}
}
\description{
Provides a description of the certificate.
}
\section{Request syntax}{
\preformatted{svc$describe_certificates(
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
# Provides a description of the certificate.
svc$describe_certificates(
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
