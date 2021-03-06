% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecr_operations.R
\name{ecr_delete_repository}
\alias{ecr_delete_repository}
\title{Deletes a repository}
\usage{
ecr_delete_repository(registryId, repositoryName, force)
}
\arguments{
\item{registryId}{The AWS account ID associated with the registry that contains the
repository to delete. If you do not specify a registry, the default
registry is assumed.}

\item{repositoryName}{[required] The name of the repository to delete.}

\item{force}{If a repository contains images, forces the deletion.}
}
\description{
Deletes a repository. If the repository contains images, you must either
delete all images in the repository or use the \code{force} option to delete
the repository.
}
\section{Request syntax}{
\preformatted{svc$delete_repository(
  registryId = "string",
  repositoryName = "string",
  force = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# This example force deletes a repository named ubuntu in the default
# registry for an account. The force parameter is required if the
# repository contains images.
svc$delete_repository(
  force = TRUE,
  repositoryName = "ubuntu"
)
}

}
\keyword{internal}
