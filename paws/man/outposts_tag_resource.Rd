% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/outposts_operations.R
\name{outposts_tag_resource}
\alias{outposts_tag_resource}
\title{Adds tags to the specified resource}
\usage{
outposts_tag_resource(ResourceArn, Tags)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the resource.}

\item{Tags}{[required] The tags to add to the resource.}
}
\description{
Adds tags to the specified resource.
}
\section{Request syntax}{
\preformatted{svc$tag_resource(
  ResourceArn = "string",
  Tags = list(
    "string"
  )
)
}
}

\keyword{internal}
