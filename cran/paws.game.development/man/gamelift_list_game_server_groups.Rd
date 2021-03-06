% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_list_game_server_groups}
\alias{gamelift_list_game_server_groups}
\title{This operation is used with the Amazon GameLift FleetIQ solution and
game server groups}
\usage{
gamelift_list_game_server_groups(Limit, NextToken)
}
\arguments{
\item{Limit}{The maximum number of results to return. Use this parameter with
\code{NextToken} to get results as a set of sequential segments.}

\item{NextToken}{A token that indicates the start of the next sequential segment of
results. Use the token returned with the previous call to this
operation. To start at the beginning of the result set, do not specify a
value.}
}
\description{
\strong{This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.}

Retrieves information on all game servers groups that exist in the
current AWS account for the selected Region. Use the pagination
parameters to retrieve results in a set of sequential segments.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html}{GameLift FleetIQ Guide}

\strong{Related operations}
\itemize{
\item CreateGameServerGroup
\item ListGameServerGroups
\item DescribeGameServerGroup
\item UpdateGameServerGroup
\item DeleteGameServerGroup
\item ResumeGameServerGroup
\item SuspendGameServerGroup
\item DescribeGameServerInstances
}
}
\section{Request syntax}{
\preformatted{svc$list_game_server_groups(
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
