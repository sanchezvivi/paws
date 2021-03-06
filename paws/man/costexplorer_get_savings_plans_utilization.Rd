% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/costexplorer_operations.R
\name{costexplorer_get_savings_plans_utilization}
\alias{costexplorer_get_savings_plans_utilization}
\title{Retrieves the Savings Plans utilization for your account across date
ranges with daily or monthly granularity}
\usage{
costexplorer_get_savings_plans_utilization(TimePeriod, Granularity,
  Filter, SortBy)
}
\arguments{
\item{TimePeriod}{[required] The time period that you want the usage and costs for. The \code{Start} date
must be within 13 months. The \code{End} date must be after the \code{Start} date,
and before the current date. Future dates can't be used as an \code{End}
date.}

\item{Granularity}{The granularity of the Amazon Web Services utillization data for your
Savings Plans.

The \code{GetSavingsPlansUtilization} operation supports only \code{DAILY} and
\code{MONTHLY} granularities.}

\item{Filter}{Filters Savings Plans utilization coverage data for active Savings Plans
dimensions. You can filter data with the following dimensions:
\itemize{
\item \code{LINKED_ACCOUNT}
\item \code{SAVINGS_PLAN_ARN}
\item \code{SAVINGS_PLANS_TYPE}
\item \code{REGION}
\item \code{PAYMENT_OPTION}
\item \code{INSTANCE_TYPE_FAMILY}
}

\code{GetSavingsPlansUtilization} uses the same
\href{https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html}{Expression}
object as the other operations, but only \code{AND} is supported among each
dimension.}

\item{SortBy}{The value by which you want to sort the data.

The following values are supported for \code{Key}:
\itemize{
\item \code{UtilizationPercentage}
\item \code{TotalCommitment}
\item \code{UsedCommitment}
\item \code{UnusedCommitment}
\item \code{NetSavings}
}

Supported values for \code{SortOrder} are \code{ASCENDING} or \code{DESCENDING}.}
}
\description{
Retrieves the Savings Plans utilization for your account across date
ranges with daily or monthly granularity. Management account in an
organization have access to member accounts. You can use
\code{GetDimensionValues} in \code{SAVINGS_PLANS} to determine the possible
dimension values.

You cannot group by any dimension values for
\code{GetSavingsPlansUtilization}.
}
\section{Request syntax}{
\preformatted{svc$get_savings_plans_utilization(
  TimePeriod = list(
    Start = "string",
    End = "string"
  ),
  Granularity = "DAILY"|"MONTHLY"|"HOURLY",
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
    Key = "string",
    SortOrder = "ASCENDING"|"DESCENDING"
  )
)
}
}

\keyword{internal}
