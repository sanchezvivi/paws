% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotthingsgraph_operations.R
\name{iotthingsgraph_create_flow_template}
\alias{iotthingsgraph_create_flow_template}
\title{Creates a workflow template}
\usage{
iotthingsgraph_create_flow_template(definition,
  compatibleNamespaceVersion)
}
\arguments{
\item{definition}{[required] The workflow \code{DefinitionDocument}.}

\item{compatibleNamespaceVersion}{The namespace version in which the workflow is to be created.

If no value is specified, the latest version is used by default.}
}
\description{
Creates a workflow template. Workflows can be created only in the user's
namespace. (The public namespace contains only entities.) The workflow
can contain only entities in the specified namespace. The workflow is
validated against the entities in the latest version of the user's
namespace unless another namespace version is specified in the request.
}
\section{Request syntax}{
\preformatted{svc$create_flow_template(
  definition = list(
    language = "GRAPHQL",
    text = "string"
  ),
  compatibleNamespaceVersion = 123
)
}
}

\keyword{internal}
