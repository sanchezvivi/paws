% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_update_resource}
\alias{apigateway_update_resource}
\title{Changes information about a Resource resource}
\usage{
apigateway_update_resource(restApiId, resourceId, patchOperations)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{resourceId}{[required] [Required] The identifier of the Resource resource.}

\item{patchOperations}{A list of update operations to be applied to the specified resource and
in the order specified in this list.}
}
\description{
Changes information about a Resource resource.
}
\section{Request syntax}{
\preformatted{svc$update_resource(
  restApiId = "string",
  resourceId = "string",
  patchOperations = list(
    list(
      op = "add"|"remove"|"replace"|"move"|"copy"|"test",
      path = "string",
      value = "string",
      from = "string"
    )
  )
)
}
}

\keyword{internal}
