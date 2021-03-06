% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_describe_maintenance_windows_for_target}
\alias{ssm_describe_maintenance_windows_for_target}
\title{Retrieves information about the maintenance window targets or tasks that
an instance is associated with}
\usage{
ssm_describe_maintenance_windows_for_target(Targets, ResourceType,
  MaxResults, NextToken)
}
\arguments{
\item{Targets}{[required] The instance ID or key/value pair to retrieve information about.}

\item{ResourceType}{[required] The type of resource you want to retrieve information about. For
example, "INSTANCE".}

\item{MaxResults}{The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.}

\item{NextToken}{The token for the next set of items to return. (You received this token
from a previous call.)}
}
\description{
Retrieves information about the maintenance window targets or tasks that
an instance is associated with.
}
\section{Request syntax}{
\preformatted{svc$describe_maintenance_windows_for_target(
  Targets = list(
    list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  ResourceType = "INSTANCE"|"RESOURCE_GROUP",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
