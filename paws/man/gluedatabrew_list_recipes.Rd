% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gluedatabrew_operations.R
\name{gluedatabrew_list_recipes}
\alias{gluedatabrew_list_recipes}
\title{Lists all of the AWS Glue DataBrew recipes in the current AWS account}
\usage{
gluedatabrew_list_recipes(MaxResults, NextToken, RecipeVersion)
}
\arguments{
\item{MaxResults}{The maximum number of results to return in this request.}

\item{NextToken}{A pagination token that can be used in a subsequent request.}

\item{RecipeVersion}{A version identifier. Using this parameter indicates to return only
those recipes that have this version identifier.}
}
\description{
Lists all of the AWS Glue DataBrew recipes in the current AWS account.
}
\section{Request syntax}{
\preformatted{svc$list_recipes(
  MaxResults = 123,
  NextToken = "string",
  RecipeVersion = "string"
)
}
}

\keyword{internal}
