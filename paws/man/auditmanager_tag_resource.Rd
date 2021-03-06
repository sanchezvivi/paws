% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_tag_resource}
\alias{auditmanager_tag_resource}
\title{Tags the specified resource in AWS Audit Manager}
\usage{
auditmanager_tag_resource(resourceArn, tags)
}
\arguments{
\item{resourceArn}{[required] The Amazon Resource Name (ARN) of the specified resource.}

\item{tags}{[required] The tags to be associated with the resource.}
}
\description{
Tags the specified resource in AWS Audit Manager.
}
\section{Request syntax}{
\preformatted{svc$tag_resource(
  resourceArn = "string",
  tags = list(
    "string"
  )
)
}
}

\keyword{internal}
