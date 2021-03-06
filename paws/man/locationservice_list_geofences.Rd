% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locationservice_operations.R
\name{locationservice_list_geofences}
\alias{locationservice_list_geofences}
\title{Lists geofences stored in a given geofence collection}
\usage{
locationservice_list_geofences(CollectionName, NextToken)
}
\arguments{
\item{CollectionName}{[required] The name of the geofence collection storing the list of geofences.}

\item{NextToken}{The pagination token specifying which page of results to return in the
response. If no token is provided, the default page is the first page.

Default value: \code{null}}
}
\description{
Lists geofences stored in a given geofence collection.
}
\section{Request syntax}{
\preformatted{svc$list_geofences(
  CollectionName = "string",
  NextToken = "string"
)
}
}

\keyword{internal}
