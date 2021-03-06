% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/honeycode_operations.R
\name{honeycode_list_table_columns}
\alias{honeycode_list_table_columns}
\title{The ListTableColumns API allows you to retrieve a list of all the
columns in a table in a workbook}
\usage{
honeycode_list_table_columns(workbookId, tableId, nextToken)
}
\arguments{
\item{workbookId}{[required] The ID of the workbook that contains the table whose columns are being
retrieved.

If a workbook with the specified id could not be found, this API throws
ResourceNotFoundException.}

\item{tableId}{[required] The ID of the table whose columns are being retrieved.

If a table with the specified id could not be found, this API throws
ResourceNotFoundException.}

\item{nextToken}{This parameter is optional. If a nextToken is not specified, the API
returns the first page of data.

Pagination tokens expire after 1 hour. If you use a token that was
returned more than an hour back, the API will throw ValidationException.}
}
\description{
The ListTableColumns API allows you to retrieve a list of all the
columns in a table in a workbook.
}
\section{Request syntax}{
\preformatted{svc$list_table_columns(
  workbookId = "string",
  tableId = "string",
  nextToken = "string"
)
}
}

\keyword{internal}
