% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appregistry_operations.R
\name{appregistry_disassociate_resource}
\alias{appregistry_disassociate_resource}
\title{Disassociates a resource from application}
\usage{
appregistry_disassociate_resource(application, resourceType, resource)
}
\arguments{
\item{application}{[required] The name or ID of the application.}

\item{resourceType}{[required] The type of the resource that is being disassociated.}

\item{resource}{[required] The name or ID of the resource.}
}
\description{
Disassociates a resource from application. Both the resource and the
application can be specified either by ID or name.
}
\section{Request syntax}{
\preformatted{svc$disassociate_resource(
  application = "string",
  resourceType = "CFN_STACK",
  resource = "string"
)
}
}

\keyword{internal}
