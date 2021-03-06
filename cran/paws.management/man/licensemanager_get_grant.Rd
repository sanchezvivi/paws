% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/licensemanager_operations.R
\name{licensemanager_get_grant}
\alias{licensemanager_get_grant}
\title{Gets detailed information about the specified grant}
\usage{
licensemanager_get_grant(GrantArn, Version)
}
\arguments{
\item{GrantArn}{[required] Amazon Resource Name (ARN) of the grant.}

\item{Version}{Grant version.}
}
\description{
Gets detailed information about the specified grant.
}
\section{Request syntax}{
\preformatted{svc$get_grant(
  GrantArn = "string",
  Version = "string"
)
}
}

\keyword{internal}
