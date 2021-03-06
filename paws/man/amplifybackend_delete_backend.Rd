% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplifybackend_operations.R
\name{amplifybackend_delete_backend}
\alias{amplifybackend_delete_backend}
\title{Removes an existing environment from your Amplify project}
\usage{
amplifybackend_delete_backend(AppId, BackendEnvironmentName)
}
\arguments{
\item{AppId}{[required] The app ID.}

\item{BackendEnvironmentName}{[required] The name of the backend environment.}
}
\description{
Removes an existing environment from your Amplify project.
}
\section{Request syntax}{
\preformatted{svc$delete_backend(
  AppId = "string",
  BackendEnvironmentName = "string"
)
}
}

\keyword{internal}
