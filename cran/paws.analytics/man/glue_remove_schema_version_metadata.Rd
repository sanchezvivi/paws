% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_remove_schema_version_metadata}
\alias{glue_remove_schema_version_metadata}
\title{Removes a key value pair from the schema version metadata for the
specified schema version ID}
\usage{
glue_remove_schema_version_metadata(SchemaId, SchemaVersionNumber,
  SchemaVersionId, MetadataKeyValue)
}
\arguments{
\item{SchemaId}{A wrapper structure that may contain the schema name and Amazon Resource
Name (ARN).}

\item{SchemaVersionNumber}{The version number of the schema.}

\item{SchemaVersionId}{The unique version ID of the schema version.}

\item{MetadataKeyValue}{[required] The value of the metadata key.}
}
\description{
Removes a key value pair from the schema version metadata for the
specified schema version ID.
}
\section{Request syntax}{
\preformatted{svc$remove_schema_version_metadata(
  SchemaId = list(
    SchemaArn = "string",
    SchemaName = "string",
    RegistryName = "string"
  ),
  SchemaVersionNumber = list(
    LatestVersion = TRUE|FALSE,
    VersionNumber = 123
  ),
  SchemaVersionId = "string",
  MetadataKeyValue = list(
    MetadataKey = "string",
    MetadataValue = "string"
  )
)
}
}

\keyword{internal}
