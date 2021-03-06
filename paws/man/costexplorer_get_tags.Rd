% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/costexplorer_operations.R
\name{costexplorer_get_tags}
\alias{costexplorer_get_tags}
\title{Queries for available tag keys and tag values for a specified period}
\usage{
costexplorer_get_tags(SearchString, TimePeriod, TagKey, Filter, SortBy,
  MaxResults, NextPageToken)
}
\arguments{
\item{SearchString}{The value that you want to search for.}

\item{TimePeriod}{[required] The start and end dates for retrieving the dimension values. The start
date is inclusive, but the end date is exclusive. For example, if
\code{start} is \code{2017-01-01} and \code{end} is \code{2017-05-01}, then the cost and
usage data is retrieved from \code{2017-01-01} up to and including
\code{2017-04-30} but not including \code{2017-05-01}.}

\item{TagKey}{The key of the tag that you want to return values for.}

\item{Filter}{}

\item{SortBy}{The value by which you want to sort the data.

The key represents cost and usage metrics. The following values are
supported:
\itemize{
\item \code{BlendedCost}
\item \code{UnblendedCost}
\item \code{AmortizedCost}
\item \code{NetAmortizedCost}
\item \code{NetUnblendedCost}
\item \code{UsageQuantity}
\item \code{NormalizedUsageAmount}
}

Supported values for \code{SortOrder} are \code{ASCENDING} or \code{DESCENDING}.

When using \code{SortBy}, \code{NextPageToken} and \code{SearchString} are not
supported.}

\item{MaxResults}{This field is only used when SortBy is provided in the request. The
maximum number of objects that to be returned for this request. If
MaxResults is not specified with SortBy, the request will return 1000
results as the default value for this parameter.}

\item{NextPageToken}{The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the maximum
page size.}
}
\description{
Queries for available tag keys and tag values for a specified period.
You can search the tag values for an arbitrary string.
}
\section{Request syntax}{
\preformatted{svc$get_tags(
  SearchString = "string",
  TimePeriod = list(
    Start = "string",
    End = "string"
  ),
  TagKey = "string",
  Filter = list(
    Or = list(
      list()
    ),
    And = list(
      list()
    ),
    Not = list(),
    Dimensions = list(
      Key = "AZ"|"INSTANCE_TYPE"|"LINKED_ACCOUNT"|"LINKED_ACCOUNT_NAME"|"OPERATION"|"PURCHASE_TYPE"|"REGION"|"SERVICE"|"SERVICE_CODE"|"USAGE_TYPE"|"USAGE_TYPE_GROUP"|"RECORD_TYPE"|"OPERATING_SYSTEM"|"TENANCY"|"SCOPE"|"PLATFORM"|"SUBSCRIPTION_ID"|"LEGAL_ENTITY_NAME"|"DEPLOYMENT_OPTION"|"DATABASE_ENGINE"|"CACHE_ENGINE"|"INSTANCE_TYPE_FAMILY"|"BILLING_ENTITY"|"RESERVATION_ID"|"RESOURCE_ID"|"RIGHTSIZING_TYPE"|"SAVINGS_PLANS_TYPE"|"SAVINGS_PLAN_ARN"|"PAYMENT_OPTION"|"AGREEMENT_END_DATE_TIME_AFTER"|"AGREEMENT_END_DATE_TIME_BEFORE",
      Values = list(
        "string"
      ),
      MatchOptions = list(
        "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"
      )
    ),
    Tags = list(
      Key = "string",
      Values = list(
        "string"
      ),
      MatchOptions = list(
        "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"
      )
    ),
    CostCategories = list(
      Key = "string",
      Values = list(
        "string"
      ),
      MatchOptions = list(
        "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"
      )
    )
  ),
  SortBy = list(
    list(
      Key = "string",
      SortOrder = "ASCENDING"|"DESCENDING"
    )
  ),
  MaxResults = 123,
  NextPageToken = "string"
)
}
}

\keyword{internal}
