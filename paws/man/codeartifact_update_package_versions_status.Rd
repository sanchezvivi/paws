% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codeartifact_operations.R
\name{codeartifact_update_package_versions_status}
\alias{codeartifact_update_package_versions_status}
\title{Updates the status of one or more versions of a package}
\usage{
codeartifact_update_package_versions_status(domain, domainOwner,
  repository, format, namespace, package, versions, versionRevisions,
  expectedStatus, targetStatus)
}
\arguments{
\item{domain}{[required] The domain that contains the repository that contains the package
versions with a status to be updated.}

\item{domainOwner}{The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.}

\item{repository}{[required] The repository that contains the package versions with the status you
want to update.}

\item{format}{[required] A format that specifies the type of the package with the statuses to
update. The valid values are:
\itemize{
\item \code{npm}
\item \code{pypi}
\item \code{maven}
\item \code{nuget}
}}

\item{namespace}{The namespace of the package. The package component that specifies its
namespace depends on its type. For example:
\itemize{
\item The namespace of a Maven package is its \code{groupId}.
\item The namespace of an npm package is its \code{scope}.
\item A Python package does not contain a corresponding component, so
Python packages do not have a namespace.
\item A NuGet package does not contain a corresponding component, so NuGet
packages do not have a namespace.
}}

\item{package}{[required] The name of the package with the version statuses to update.}

\item{versions}{[required] An array of strings that specify the versions of the package with the
statuses to update.}

\item{versionRevisions}{A map of package versions and package version revisions. The map \code{key}
is the package version (for example, \verb{3.5.2}), and the map \code{value} is
the package version revision.}

\item{expectedStatus}{The package version’s expected status before it is updated. If
\code{expectedStatus} is provided, the package version's status is updated
only if its status at the time \code{UpdatePackageVersionsStatus} is called
matches \code{expectedStatus}.}

\item{targetStatus}{[required] The status you want to change the package version status to.}
}
\description{
Updates the status of one or more versions of a package.
}
\section{Request syntax}{
\preformatted{svc$update_package_versions_status(
  domain = "string",
  domainOwner = "string",
  repository = "string",
  format = "npm"|"pypi"|"maven"|"nuget",
  namespace = "string",
  package = "string",
  versions = list(
    "string"
  ),
  versionRevisions = list(
    "string"
  ),
  expectedStatus = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted",
  targetStatus = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted"
)
}
}

\keyword{internal}
