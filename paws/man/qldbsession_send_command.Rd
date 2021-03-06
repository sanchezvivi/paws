% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qldbsession_operations.R
\name{qldbsession_send_command}
\alias{qldbsession_send_command}
\title{Sends a command to an Amazon QLDB ledger}
\usage{
qldbsession_send_command(SessionToken, StartSession, StartTransaction,
  EndSession, CommitTransaction, AbortTransaction, ExecuteStatement,
  FetchPage)
}
\arguments{
\item{SessionToken}{Specifies the session token for the current command. A session token is
constant throughout the life of the session.

To obtain a session token, run the \code{StartSession} command. This
\code{SessionToken} is required for every subsequent command that is issued
during the current session.}

\item{StartSession}{Command to start a new session. A session token is obtained as part of
the response.}

\item{StartTransaction}{Command to start a new transaction.}

\item{EndSession}{Command to end the current session.}

\item{CommitTransaction}{Command to commit the specified transaction.}

\item{AbortTransaction}{Command to abort the current transaction.}

\item{ExecuteStatement}{Command to execute a statement in the specified transaction.}

\item{FetchPage}{Command to fetch a page.}
}
\description{
Sends a command to an Amazon QLDB ledger.

Instead of interacting directly with this API, we recommend using the
QLDB driver or the QLDB shell to execute data transactions on a ledger.
\itemize{
\item If you are working with an AWS SDK, use the QLDB driver. The driver
provides a high-level abstraction layer above this \emph{QLDB Session}
data plane and manages \code{SendCommand} API calls for you. For
information and a list of supported programming languages, see
\href{https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html}{Getting started with the driver}
in the \emph{Amazon QLDB Developer Guide}.
\item If you are working with the AWS Command Line Interface (AWS CLI),
use the QLDB shell. The shell is a command line interface that uses
the QLDB driver to interact with a ledger. For information, see
\href{https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html}{Accessing Amazon QLDB using the QLDB shell}.
}
}
\section{Request syntax}{
\preformatted{svc$send_command(
  SessionToken = "string",
  StartSession = list(
    LedgerName = "string"
  ),
  StartTransaction = list(),
  EndSession = list(),
  CommitTransaction = list(
    TransactionId = "string",
    CommitDigest = raw
  ),
  AbortTransaction = list(),
  ExecuteStatement = list(
    TransactionId = "string",
    Statement = "string",
    Parameters = list(
      list(
        IonBinary = raw,
        IonText = "string"
      )
    )
  ),
  FetchPage = list(
    TransactionId = "string",
    NextPageToken = "string"
  )
)
}
}

\keyword{internal}
