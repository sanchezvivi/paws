% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clouddirectory_operations.R
\name{clouddirectory_get_facet}
\alias{clouddirectory_get_facet}
\title{Gets details of the Facet, such as facet name, attributes, Rules, or
ObjectType}
\usage{
clouddirectory_get_facet(SchemaArn, Name)
}
\arguments{
\item{SchemaArn}{[required] The Amazon Resource Name (ARN) that is associated with the Facet. For
more information, see arns.}

\item{Name}{[required] The name of the facet to retrieve.}
}
\description{
Gets details of the Facet, such as facet name, attributes, Rules, or
\code{ObjectType}. You can call this on all kinds of schema facets --
published, development, or applied.
}
\section{Request syntax}{
\preformatted{svc$get_facet(
  SchemaArn = "string",
  Name = "string"
)
}
}

\keyword{internal}
