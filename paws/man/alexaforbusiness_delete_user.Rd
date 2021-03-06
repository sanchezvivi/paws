% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_delete_user}
\alias{alexaforbusiness_delete_user}
\title{Deletes a specified user by user ARN and enrollment ARN}
\usage{
alexaforbusiness_delete_user(UserArn, EnrollmentId)
}
\arguments{
\item{UserArn}{The ARN of the user to delete in the organization. Required.}

\item{EnrollmentId}{[required] The ARN of the user's enrollment in the organization. Required.}
}
\description{
Deletes a specified user by user ARN and enrollment ARN.
}
\section{Request syntax}{
\preformatted{svc$delete_user(
  UserArn = "string",
  EnrollmentId = "string"
)
}
}

\keyword{internal}
