% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_update_fleet_port_settings}
\alias{gamelift_update_fleet_port_settings}
\title{Updates port settings for a fleet}
\usage{
gamelift_update_fleet_port_settings(FleetId,
  InboundPermissionAuthorizations, InboundPermissionRevocations)
}
\arguments{
\item{FleetId}{[required] A unique identifier for a fleet to update port settings for. You can use
either the fleet ID or ARN value.}

\item{InboundPermissionAuthorizations}{A collection of port settings to be added to the fleet resource.}

\item{InboundPermissionRevocations}{A collection of port settings to be removed from the fleet resource.}
}
\description{
Updates port settings for a fleet. To update settings, specify the fleet
ID to be updated and list the permissions you want to update. List the
permissions you want to add in \code{InboundPermissionAuthorizations}, and
permissions you want to remove in \code{InboundPermissionRevocations}.
Permissions to be removed must match existing fleet permissions. If
successful, the fleet ID for the updated fleet is returned.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html}{Setting up GameLift Fleets}

\strong{Related operations}
\itemize{
\item CreateFleet
\item ListFleets
\item DeleteFleet
\item DescribeFleetAttributes
\item Update fleets:
\itemize{
\item UpdateFleetAttributes
\item UpdateFleetCapacity
\item UpdateFleetPortSettings
\item UpdateRuntimeConfiguration
}
\item StartFleetActions or StopFleetActions
}
}
\section{Request syntax}{
\preformatted{svc$update_fleet_port_settings(
  FleetId = "string",
  InboundPermissionAuthorizations = list(
    list(
      FromPort = 123,
      ToPort = 123,
      IpRange = "string",
      Protocol = "TCP"|"UDP"
    )
  ),
  InboundPermissionRevocations = list(
    list(
      FromPort = 123,
      ToPort = 123,
      IpRange = "string",
      Protocol = "TCP"|"UDP"
    )
  )
)
}
}

\keyword{internal}
