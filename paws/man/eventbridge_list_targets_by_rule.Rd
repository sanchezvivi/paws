% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eventbridge_operations.R
\name{eventbridge_list_targets_by_rule}
\alias{eventbridge_list_targets_by_rule}
\title{Lists the targets assigned to the specified rule}
\usage{
eventbridge_list_targets_by_rule(Rule, EventBusName, NextToken, Limit)
}
\arguments{
\item{Rule}{[required] The name of the rule.}

\item{EventBusName}{The name or ARN of the event bus associated with the rule. If you omit
this, the default event bus is used.}

\item{NextToken}{The token returned by a previous call to retrieve the next set of
results.}

\item{Limit}{The maximum number of results to return.}
}
\description{
Lists the targets assigned to the specified rule.
}
\section{Request syntax}{
\preformatted{svc$list_targets_by_rule(
  Rule = "string",
  EventBusName = "string",
  NextToken = "string",
  Limit = 123
)
}
}

\keyword{internal}
