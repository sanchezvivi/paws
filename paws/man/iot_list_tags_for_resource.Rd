% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_list_tags_for_resource}
\alias{iot_list_tags_for_resource}
\title{Lists the tags (metadata) you have assigned to the resource}
\usage{
iot_list_tags_for_resource(resourceArn, nextToken)
}
\arguments{
\item{resourceArn}{[required] The ARN of the resource.}

\item{nextToken}{To retrieve the next set of results, the \code{nextToken} value from a
previous response; otherwise \strong{null} to receive the first set of
results.}
}
\description{
Lists the tags (metadata) you have assigned to the resource.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  resourceArn = "string",
  nextToken = "string"
)
}
}

\keyword{internal}
