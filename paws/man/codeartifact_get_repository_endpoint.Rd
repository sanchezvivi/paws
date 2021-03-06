% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codeartifact_operations.R
\name{codeartifact_get_repository_endpoint}
\alias{codeartifact_get_repository_endpoint}
\title{Returns the endpoint of a repository for a specific package format}
\usage{
codeartifact_get_repository_endpoint(domain, domainOwner, repository,
  format)
}
\arguments{
\item{domain}{[required] The name of the domain that contains the repository.}

\item{domainOwner}{The 12-digit account number of the AWS account that owns the domain that
contains the repository. It does not include dashes or spaces.}

\item{repository}{[required] The name of the repository.}

\item{format}{[required] Returns which endpoint of a repository to return. A repository has one
endpoint for each package format:
\itemize{
\item \code{npm}
\item \code{pypi}
\item \code{maven}
\item \code{nuget}
}}
}
\description{
Returns the endpoint of a repository for a specific package format. A
repository has one endpoint for each package format:
\itemize{
\item \code{npm}
\item \code{pypi}
\item \code{maven}
\item \code{nuget}
}
}
\section{Request syntax}{
\preformatted{svc$get_repository_endpoint(
  domain = "string",
  domainOwner = "string",
  repository = "string",
  format = "npm"|"pypi"|"maven"|"nuget"
)
}
}

\keyword{internal}
