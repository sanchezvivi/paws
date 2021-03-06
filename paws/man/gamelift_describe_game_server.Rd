% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_game_server}
\alias{gamelift_describe_game_server}
\title{This operation is used with the Amazon GameLift FleetIQ solution and
game server groups}
\usage{
gamelift_describe_game_server(GameServerGroupName, GameServerId)
}
\arguments{
\item{GameServerGroupName}{[required] A unique identifier for the game server group where the game server is
running. Use either the GameServerGroup name or ARN value.}

\item{GameServerId}{[required] A custom string that uniquely identifies the game server information to
be retrieved.}
}
\description{
\strong{This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.}

Retrieves information for a registered game server. Information includes
game server status, health check info, and the instance that the game
server is running on.

To retrieve game server information, specify the game server ID. If
successful, the requested game server object is returned.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html}{GameLift FleetIQ Guide}

\strong{Related operations}
\itemize{
\item RegisterGameServer
\item ListGameServers
\item ClaimGameServer
\item DescribeGameServer
\item UpdateGameServer
\item DeregisterGameServer
}
}
\section{Request syntax}{
\preformatted{svc$describe_game_server(
  GameServerGroupName = "string",
  GameServerId = "string"
)
}
}

\keyword{internal}
