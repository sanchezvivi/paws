% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gluedatabrew_operations.R
\name{gluedatabrew_update_dataset}
\alias{gluedatabrew_update_dataset}
\title{Modifies the definition of an existing AWS Glue DataBrew dataset in the
current AWS account}
\usage{
gluedatabrew_update_dataset(Name, FormatOptions, Input)
}
\arguments{
\item{Name}{[required] The name of the dataset to be updated.}

\item{FormatOptions}{}

\item{Input}{[required]}
}
\description{
Modifies the definition of an existing AWS Glue DataBrew dataset in the
current AWS account.
}
\section{Request syntax}{
\preformatted{svc$update_dataset(
  Name = "string",
  FormatOptions = list(
    Json = list(
      MultiLine = TRUE|FALSE
    ),
    Excel = list(
      SheetNames = list(
        "string"
      ),
      SheetIndexes = list(
        123
      )
    )
  ),
  Input = list(
    S3InputDefinition = list(
      Bucket = "string",
      Key = "string"
    ),
    DataCatalogInputDefinition = list(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      TempDirectory = list(
        Bucket = "string",
        Key = "string"
      )
    )
  )
)
}
}

\keyword{internal}
