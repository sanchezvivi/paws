% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_matchmaking}
\alias{gamelift_describe_matchmaking}
\title{Retrieves one or more matchmaking tickets}
\usage{
gamelift_describe_matchmaking(TicketIds)
}
\arguments{
\item{TicketIds}{[required] A unique identifier for a matchmaking ticket. You can include up to 10
ID values.}
}
\description{
Retrieves one or more matchmaking tickets. Use this operation to
retrieve ticket information, including--after a successful match is
made--connection information for the resulting new game session.

To request matchmaking tickets, provide a list of up to 10 ticket IDs.
If the request is successful, a ticket object is returned for each
requested ID that currently exists.

This operation is not designed to be continually called to track
matchmaking ticket status. This practice can cause you to exceed your
API limit, which results in errors. Instead, as a best practice, set up
an Amazon Simple Notification Service (SNS) to receive notifications,
and provide the topic ARN in the matchmaking configuration. Continuously
poling ticket status with DescribeMatchmaking should only be used for
games in development with low matchmaking usage.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html}{Add FlexMatch to a Game Client}

\href{https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html}{Set Up FlexMatch Event Notification}

\strong{Related operations}
\itemize{
\item StartMatchmaking
\item DescribeMatchmaking
\item StopMatchmaking
\item AcceptMatch
\item StartMatchBackfill
}
}
\section{Request syntax}{
\preformatted{svc$describe_matchmaking(
  TicketIds = list(
    "string"
  )
)
}
}

\keyword{internal}
