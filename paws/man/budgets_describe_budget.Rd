% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/budgets_operations.R
\name{budgets_describe_budget}
\alias{budgets_describe_budget}
\title{Describes a budget}
\usage{
budgets_describe_budget(AccountId, BudgetName)
}
\arguments{
\item{AccountId}{[required] The \code{accountId} that is associated with the budget that you want a
description of.}

\item{BudgetName}{[required] The name of the budget that you want a description of.}
}
\description{
Describes a budget.

The Request Syntax section shows the \code{BudgetLimit} syntax. For
\code{PlannedBudgetLimits}, see the
\href{https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples}{Examples}
section.
}
\section{Request syntax}{
\preformatted{svc$describe_budget(
  AccountId = "string",
  BudgetName = "string"
)
}
}

\keyword{internal}
