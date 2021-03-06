% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_list_functions_by_code_signing_config}
\alias{lambda_list_functions_by_code_signing_config}
\title{List the functions that use the specified code signing configuration}
\usage{
lambda_list_functions_by_code_signing_config(CodeSigningConfigArn,
  Marker, MaxItems)
}
\arguments{
\item{CodeSigningConfigArn}{[required] The The Amazon Resource Name (ARN) of the code signing configuration.}

\item{Marker}{Specify the pagination token that's returned by a previous request to
retrieve the next page of results.}

\item{MaxItems}{Maximum number of items to return.}
}
\description{
List the functions that use the specified code signing configuration.
You can use this method prior to deleting a code signing configuration,
to verify that no functions are using it.
}
\section{Request syntax}{
\preformatted{svc$list_functions_by_code_signing_config(
  CodeSigningConfigArn = "string",
  Marker = "string",
  MaxItems = 123
)
}
}

\keyword{internal}
