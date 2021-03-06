% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchevents_operations.R
\name{cloudwatchevents_enable_rule}
\alias{cloudwatchevents_enable_rule}
\title{Enables the specified rule}
\usage{
cloudwatchevents_enable_rule(Name, EventBusName)
}
\arguments{
\item{Name}{[required] The name of the rule.}

\item{EventBusName}{The name or ARN of the event bus associated with the rule. If you omit
this, the default event bus is used.}
}
\description{
Enables the specified rule. If the rule does not exist, the operation
fails.

When you enable a rule, incoming events might not immediately start
matching to a newly enabled rule. Allow a short period of time for
changes to take effect.
}
\section{Request syntax}{
\preformatted{svc$enable_rule(
  Name = "string",
  EventBusName = "string"
)
}
}

\keyword{internal}
