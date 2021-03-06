% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_get_segment_versions}
\alias{pinpoint_get_segment_versions}
\title{Retrieves information about the configuration, dimension, and other
settings for all the versions of a specific segment that's associated
with an application}
\usage{
pinpoint_get_segment_versions(ApplicationId, PageSize, SegmentId, Token)
}
\arguments{
\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}

\item{PageSize}{The maximum number of items to include in each page of a paginated
response. This parameter is not supported for application, campaign, and
journey metrics.}

\item{SegmentId}{[required] The unique identifier for the segment.}

\item{Token}{The NextToken string that specifies which page of results to return in a
paginated response.}
}
\description{
Retrieves information about the configuration, dimension, and other
settings for all the versions of a specific segment that's associated
with an application.
}
\section{Request syntax}{
\preformatted{svc$get_segment_versions(
  ApplicationId = "string",
  PageSize = "string",
  SegmentId = "string",
  Token = "string"
)
}
}

\keyword{internal}
