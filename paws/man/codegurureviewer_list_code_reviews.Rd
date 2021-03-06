% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codegurureviewer_operations.R
\name{codegurureviewer_list_code_reviews}
\alias{codegurureviewer_list_code_reviews}
\title{Lists all the code reviews that the customer has created in the past 90
days}
\usage{
codegurureviewer_list_code_reviews(ProviderTypes, States,
  RepositoryNames, Type, MaxResults, NextToken)
}
\arguments{
\item{ProviderTypes}{List of provider types for filtering that needs to be applied before
displaying the result. For example, \verb{providerTypes=\\\[GitHub\\\]} lists
code reviews from GitHub.}

\item{States}{List of states for filtering that needs to be applied before displaying
the result. For example, \verb{states=\\\[Pending\\\]} lists code reviews in
the Pending state.

The valid code review states are:
\itemize{
\item \code{Completed}: The code review is complete.
\item \code{Pending}: The code review started and has not completed or failed.
\item \code{Failed}: The code review failed.
\item \code{Deleting}: The code review is being deleted.
}}

\item{RepositoryNames}{List of repository names for filtering that needs to be applied before
displaying the result.}

\item{Type}{[required] The type of code reviews to list in the response.}

\item{MaxResults}{The maximum number of results that are returned per call. The default is
100.}

\item{NextToken}{If nextToken is returned, there are more results available. The value of
nextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page. Keep all other
arguments unchanged.}
}
\description{
Lists all the code reviews that the customer has created in the past 90
days.
}
\section{Request syntax}{
\preformatted{svc$list_code_reviews(
  ProviderTypes = list(
    "CodeCommit"|"GitHub"|"Bitbucket"|"GitHubEnterpriseServer"
  ),
  States = list(
    "Completed"|"Pending"|"Failed"|"Deleting"
  ),
  RepositoryNames = list(
    "string"
  ),
  Type = "PullRequest"|"RepositoryAnalysis",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
