% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workmail_operations.R
\name{workmail_update_resource}
\alias{workmail_update_resource}
\title{Updates data for the resource}
\usage{
workmail_update_resource(OrganizationId, ResourceId, Name,
  BookingOptions)
}
\arguments{
\item{OrganizationId}{[required] The identifier associated with the organization for which the resource
is updated.}

\item{ResourceId}{[required] The identifier of the resource to be updated.}

\item{Name}{The name of the resource to be updated.}

\item{BookingOptions}{The resource's booking options to be updated.}
}
\description{
Updates data for the resource. To have the latest information, it must
be preceded by a DescribeResource call. The dataset in the request
should be the one expected when performing another \code{DescribeResource}
call.
}
\section{Request syntax}{
\preformatted{svc$update_resource(
  OrganizationId = "string",
  ResourceId = "string",
  Name = "string",
  BookingOptions = list(
    AutoAcceptRequests = TRUE|FALSE,
    AutoDeclineRecurringRequests = TRUE|FALSE,
    AutoDeclineConflictingRequests = TRUE|FALSE
  )
)
}
}

\keyword{internal}
