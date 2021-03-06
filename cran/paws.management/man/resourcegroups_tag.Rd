% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resourcegroups_operations.R
\name{resourcegroups_tag}
\alias{resourcegroups_tag}
\title{Adds tags to a resource group with the specified ARN}
\usage{
resourcegroups_tag(Arn, Tags)
}
\arguments{
\item{Arn}{[required] The ARN of the resource group to which to add tags.}

\item{Tags}{[required] The tags to add to the specified resource group. A tag is a
string-to-string map of key-value pairs.}
}
\description{
Adds tags to a resource group with the specified ARN. Existing tags on a
resource group are not changed if they are not specified in the request
parameters.

Do not store personally identifiable information (PII) or other
confidential or sensitive information in tags. We use tags to provide
you with billing and administration services. Tags are not intended to
be used for private or sensitive data.

\strong{Minimum permissions}

To run this command, you must have the following permissions:
\itemize{
\item \code{resource-groups:Tag}
}
}
\section{Request syntax}{
\preformatted{svc$tag(
  Arn = "string",
  Tags = list(
    "string"
  )
)
}
}

\keyword{internal}
