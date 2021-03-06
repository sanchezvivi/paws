% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_describe_stack_resource_drifts}
\alias{cloudformation_describe_stack_resource_drifts}
\title{Returns drift information for the resources that have been checked for
drift in the specified stack}
\usage{
cloudformation_describe_stack_resource_drifts(StackName,
  StackResourceDriftStatusFilters, NextToken, MaxResults)
}
\arguments{
\item{StackName}{[required] The name of the stack for which you want drift information.}

\item{StackResourceDriftStatusFilters}{The resource drift status values to use as filters for the resource
drift results returned.
\itemize{
\item \code{DELETED}: The resource differs from its expected template
configuration in that the resource has been deleted.
\item \code{MODIFIED}: One or more resource properties differ from their
expected template values.
\item \code{IN_SYNC}: The resources's actual configuration matches its expected
template configuration.
\item \code{NOT_CHECKED}: AWS CloudFormation does not currently return this
value.
}}

\item{NextToken}{A string that identifies the next page of stack resource drift results.}

\item{MaxResults}{The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a \code{NextToken} value that you can assign to the \code{NextToken} request
parameter to get the next set of results.}
}
\description{
Returns drift information for the resources that have been checked for
drift in the specified stack. This includes actual and expected
configuration values for resources where AWS CloudFormation detects
configuration drift.

For a given stack, there will be one \code{StackResourceDrift} for each stack
resource that has been checked for drift. Resources that have not yet
been checked for drift are not included. Resources that do not currently
support drift detection are not checked, and so not included. For a list
of resources that support drift detection, see \href{https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html}{Resources that Support Drift Detection}.

Use DetectStackResourceDrift to detect drift on individual resources, or
DetectStackDrift to detect drift on all supported resources for a given
stack.
}
\section{Request syntax}{
\preformatted{svc$describe_stack_resource_drifts(
  StackName = "string",
  StackResourceDriftStatusFilters = list(
    "IN_SYNC"|"MODIFIED"|"DELETED"|"NOT_CHECKED"
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
