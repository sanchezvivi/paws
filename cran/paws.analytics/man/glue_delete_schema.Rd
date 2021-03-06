% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_delete_schema}
\alias{glue_delete_schema}
\title{Deletes the entire schema set, including the schema set and all of its
versions}
\usage{
glue_delete_schema(SchemaId)
}
\arguments{
\item{SchemaId}{[required] This is a wrapper structure that may contain the schema name and Amazon
Resource Name (ARN).}
}
\description{
Deletes the entire schema set, including the schema set and all of its
versions. To get the status of the delete operation, you can call
\code{GetSchema} API after the asynchronous call. Deleting a registry will
disable all online operations for the schema, such as the
\code{GetSchemaByDefinition}, and \code{RegisterSchemaVersion} APIs.
}
\section{Request syntax}{
\preformatted{svc$delete_schema(
  SchemaId = list(
    SchemaArn = "string",
    SchemaName = "string",
    RegistryName = "string"
  )
)
}
}

\keyword{internal}
