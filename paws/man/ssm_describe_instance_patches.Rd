% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_describe_instance_patches}
\alias{ssm_describe_instance_patches}
\title{Retrieves information about the patches on the specified instance and
their state relative to the patch baseline being used for the instance}
\usage{
ssm_describe_instance_patches(InstanceId, Filters, NextToken,
  MaxResults)
}
\arguments{
\item{InstanceId}{[required] The ID of the instance whose patch state information should be
retrieved.}

\item{Filters}{Each entry in the array is a structure containing:

Key (string, between 1 and 128 characters)

Values (array of strings, each string between 1 and 256 characters)}

\item{NextToken}{The token for the next set of items to return. (You received this token
from a previous call.)}

\item{MaxResults}{The maximum number of patches to return (per page).}
}
\description{
Retrieves information about the patches on the specified instance and
their state relative to the patch baseline being used for the instance.
}
\section{Request syntax}{
\preformatted{ssm$describe_instance_patches(
  InstanceId = "string",
  Filters = list(
    list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}