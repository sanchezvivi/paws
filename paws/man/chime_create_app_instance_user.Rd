% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_create_app_instance_user}
\alias{chime_create_app_instance_user}
\title{Creates a user under an Amazon Chime AppInstance}
\usage{
chime_create_app_instance_user(AppInstanceArn, AppInstanceUserId, Name,
  Metadata, ClientRequestToken)
}
\arguments{
\item{AppInstanceArn}{[required] The ARN of the app instance request.}

\item{AppInstanceUserId}{[required] The user ID of the app instance.}

\item{Name}{[required] The user's name.}

\item{Metadata}{The request's metadata. Limited to a 1KB string in UTF-8.}

\item{ClientRequestToken}{[required] The token assigned to the user requesting an app instance.}
}
\description{
Creates a user under an Amazon Chime \code{AppInstance}. The request consists
of a unique \code{appInstanceUserId} and \code{Name} for that user.
}
\section{Request syntax}{
\preformatted{svc$create_app_instance_user(
  AppInstanceArn = "string",
  AppInstanceUserId = "string",
  Name = "string",
  Metadata = "string",
  ClientRequestToken = "string"
)
}
}

\keyword{internal}
