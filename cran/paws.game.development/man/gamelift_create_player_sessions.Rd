% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_create_player_sessions}
\alias{gamelift_create_player_sessions}
\title{Reserves open slots in a game session for a group of players}
\usage{
gamelift_create_player_sessions(GameSessionId, PlayerIds, PlayerDataMap)
}
\arguments{
\item{GameSessionId}{[required] A unique identifier for the game session to add players to.}

\item{PlayerIds}{[required] List of unique identifiers for the players to be added.}

\item{PlayerDataMap}{Map of string pairs, each specifying a player ID and a set of
developer-defined information related to the player. Amazon GameLift
does not use this data, so it can be formatted as needed for use in the
game. Player data strings for player IDs not included in the \code{PlayerIds}
parameter are ignored.}
}
\description{
Reserves open slots in a game session for a group of players. Before
players can be added, a game session must have an \code{ACTIVE} status, have
a creation policy of \code{ALLOW_ALL}, and have an open player slot. To add a
single player to a game session, use CreatePlayerSession. When a player
connects to the game server and references a player session ID, the game
server contacts the Amazon GameLift service to validate the player
reservation and accept the player.

To create player sessions, specify a game session ID, a list of player
IDs, and optionally a set of player data strings. If successful, a slot
is reserved in the game session for each player and a set of new
PlayerSession objects is returned. Player sessions cannot be updated.

\emph{Available in Amazon GameLift Local.}
\itemize{
\item CreatePlayerSession
\item CreatePlayerSessions
\item DescribePlayerSessions
\item Game session placements
\itemize{
\item StartGameSessionPlacement
\item DescribeGameSessionPlacement
\item StopGameSessionPlacement
}
}
}
\section{Request syntax}{
\preformatted{svc$create_player_sessions(
  GameSessionId = "string",
  PlayerIds = list(
    "string"
  ),
  PlayerDataMap = list(
    "string"
  )
)
}
}

\keyword{internal}
