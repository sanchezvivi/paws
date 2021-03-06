% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalizeruntime_operations.R
\name{personalizeruntime_get_personalized_ranking}
\alias{personalizeruntime_get_personalized_ranking}
\title{Re-ranks a list of recommended items for the given user}
\usage{
personalizeruntime_get_personalized_ranking(campaignArn, inputList,
  userId, context, filterArn, filterValues)
}
\arguments{
\item{campaignArn}{[required] The Amazon Resource Name (ARN) of the campaign to use for generating the
personalized ranking.}

\item{inputList}{[required] A list of items (by \code{itemId}) to rank. If an item was not included in
the training dataset, the item is appended to the end of the reranked
list. The maximum is 500.}

\item{userId}{[required] The user for which you want the campaign to provide a personalized
ranking.}

\item{context}{The contextual metadata to use when getting recommendations. Contextual
metadata includes any interaction information that might be relevant
when getting a user's recommendations, such as the user's current
location or device type.}

\item{filterArn}{The Amazon Resource Name (ARN) of a filter you created to include items
or exclude items from recommendations for a given user. For more
information, see \href{https://docs.aws.amazon.com/personalize/latest/dg/filter.html}{Filtering Recommendations}.}

\item{filterValues}{The values to use when filtering recommendations. For each placeholder
parameter in your filter expression, provide the parameter name (in
matching case) as a key and the filter value(s) as the corresponding
value. Separate multiple values for one parameter with a comma.

For filter expressions that use an \code{INCLUDE} element to include items,
you must provide values for all parameters that are defined in the
expression. For filters with expressions that use an \code{EXCLUDE} element
to exclude items, you can omit the \code{filter-values}.In this case, Amazon
Personalize doesn't use that portion of the expression to filter
recommendations.

For more information, see \href{https://docs.aws.amazon.com/personalize/latest/dg/filter.html}{Filtering Recommendations}.}
}
\description{
Re-ranks a list of recommended items for the given user. The first item
in the list is deemed the most likely item to be of interest to the
user.

The solution backing the campaign must have been created using a recipe
of type PERSONALIZED\\_RANKING.
}
\section{Request syntax}{
\preformatted{svc$get_personalized_ranking(
  campaignArn = "string",
  inputList = list(
    "string"
  ),
  userId = "string",
  context = list(
    "string"
  ),
  filterArn = "string",
  filterValues = list(
    "string"
  )
)
}
}

\keyword{internal}
