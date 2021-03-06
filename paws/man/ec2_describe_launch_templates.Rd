% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_launch_templates}
\alias{ec2_describe_launch_templates}
\title{Describes one or more launch templates}
\usage{
ec2_describe_launch_templates(DryRun, LaunchTemplateIds,
  LaunchTemplateNames, Filters, NextToken, MaxResults)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{LaunchTemplateIds}{One or more launch template IDs.}

\item{LaunchTemplateNames}{One or more launch template names.}

\item{Filters}{One or more filters.
\itemize{
\item \code{create-time} - The time the launch template was created.
\item \code{launch-template-name} - The name of the launch template.
\item \code{tag}:<key> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value
as the filter value. For example, to find all resources that have a
tag with the key \code{Owner} and the value \code{TeamA}, specify \code{tag:Owner}
for the filter name and \code{TeamA} for the filter value.
\item \code{tag-key} - The key of a tag assigned to the resource. Use this
filter to find all resources assigned a tag with a specific key,
regardless of the tag value.
}}

\item{NextToken}{The token to request the next page of results.}

\item{MaxResults}{The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned \code{NextToken}
value. This value can be between 1 and 200.}
}
\description{
Describes one or more launch templates.
}
\section{Request syntax}{
\preformatted{svc$describe_launch_templates(
  DryRun = TRUE|FALSE,
  LaunchTemplateIds = list(
    "string"
  ),
  LaunchTemplateNames = list(
    "string"
  ),
  Filters = list(
    list(
      Name = "string",
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

\examples{
\dontrun{
# This example describes the specified launch template.
svc$describe_launch_templates(
  LaunchTemplateIds = list(
    "lt-01238c059e3466abc"
  )
)
}

}
\keyword{internal}
