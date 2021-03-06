% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_update_context}
\alias{sagemaker_update_context}
\title{Updates a context}
\usage{
sagemaker_update_context(ContextName, Description, Properties,
  PropertiesToRemove)
}
\arguments{
\item{ContextName}{[required] The name of the context to update.}

\item{Description}{The new description for the context.}

\item{Properties}{The new list of properties. Overwrites the current property list.}

\item{PropertiesToRemove}{A list of properties to remove.}
}
\description{
Updates a context.
}
\section{Request syntax}{
\preformatted{svc$update_context(
  ContextName = "string",
  Description = "string",
  Properties = list(
    "string"
  ),
  PropertiesToRemove = list(
    "string"
  )
)
}
}

\keyword{internal}
