% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codeartifact_operations.R
\name{codeartifact_list_package_versions}
\alias{codeartifact_list_package_versions}
\title{Returns a list of PackageVersionSummary objects for package versions in
a repository that match the request parameters}
\usage{
codeartifact_list_package_versions(domain, domainOwner, repository,
  format, namespace, package, status, sortBy, maxResults, nextToken)
}
\arguments{
\item{domain}{[required] The name of the domain that contains the repository that contains the
returned package versions.}

\item{domainOwner}{The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.}

\item{repository}{[required] The name of the repository that contains the package.}

\item{format}{[required] The format of the returned packages. The valid package types are:
\itemize{
\item \code{npm}: A Node Package Manager (npm) package.
\item \code{pypi}: A Python Package Index (PyPI) package.
\item \code{maven}: A Maven package that contains compiled code in a
distributable format, such as a JAR file.
\item \code{nuget}: A NuGet package.
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

\item{package}{[required] The name of the package for which you want to return a list of package
versions.}

\item{status}{A string that specifies the status of the package versions to include in
the returned list. It can be one of the following:
\itemize{
\item \code{Published}
\item \code{Unfinished}
\item \code{Unlisted}
\item \code{Archived}
\item \code{Disposed}
}}

\item{sortBy}{How to sort the returned list of package versions.}

\item{maxResults}{The maximum number of results to return per page.}

\item{nextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}
}
\description{
Returns a list of
\href{https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html}{\code{PackageVersionSummary}}
objects for package versions in a repository that match the request
parameters.
}
\section{Request syntax}{
\preformatted{svc$list_package_versions(
  domain = "string",
  domainOwner = "string",
  repository = "string",
  format = "npm"|"pypi"|"maven"|"nuget",
  namespace = "string",
  package = "string",
  status = "Published"|"Unfinished"|"Unlisted"|"Archived"|"Disposed"|"Deleted",
  sortBy = "PUBLISHED_TIME",
  maxResults = 123,
  nextToken = "string"
)
}
}

\keyword{internal}
