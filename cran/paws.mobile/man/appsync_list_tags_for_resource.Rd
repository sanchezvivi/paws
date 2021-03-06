% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appsync_operations.R
\name{appsync_list_tags_for_resource}
\alias{appsync_list_tags_for_resource}
\title{Lists the tags for a resource}
\usage{
appsync_list_tags_for_resource(resourceArn)
}
\arguments{
\item{resourceArn}{[required] The \code{GraphqlApi} ARN.}
}
\description{
Lists the tags for a resource.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  resourceArn = "string"
)
}
}

\keyword{internal}
