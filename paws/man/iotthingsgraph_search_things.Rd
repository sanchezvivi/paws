% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotthingsgraph_operations.R
\name{iotthingsgraph_search_things}
\alias{iotthingsgraph_search_things}
\title{Searches for things associated with the specified entity}
\usage{
iotthingsgraph_search_things(entityId, nextToken, maxResults,
  namespaceVersion)
}
\arguments{
\item{entityId}{[required] The ID of the entity to which the things are associated.

The IDs should be in the following format.

\verb{urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME}}

\item{nextToken}{The string that specifies the next page of results. Use this when you're
paginating results.}

\item{maxResults}{The maximum number of results to return in the response.}

\item{namespaceVersion}{The version of the user's namespace. Defaults to the latest version of
the user's namespace.}
}
\description{
Searches for things associated with the specified entity. You can search
by both device and device model.

For example, if two different devices, camera1 and camera2, implement
the camera device model, the user can associate thing1 to camera1 and
thing2 to camera2. \code{SearchThings(camera2)} will return only thing2, but
\code{SearchThings(camera)} will return both thing1 and thing2.

This action searches for exact matches and doesn't perform partial text
matching.
}
\section{Request syntax}{
\preformatted{svc$search_things(
  entityId = "string",
  nextToken = "string",
  maxResults = 123,
  namespaceVersion = 123
)
}
}

\keyword{internal}
