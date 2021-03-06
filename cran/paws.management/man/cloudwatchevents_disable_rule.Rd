% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchevents_operations.R
\name{cloudwatchevents_disable_rule}
\alias{cloudwatchevents_disable_rule}
\title{Disables the specified rule}
\usage{
cloudwatchevents_disable_rule(Name, EventBusName)
}
\arguments{
\item{Name}{[required] The name of the rule.}

\item{EventBusName}{The name or ARN of the event bus associated with the rule. If you omit
this, the default event bus is used.}
}
\description{
Disables the specified rule. A disabled rule won't match any events, and
won't self-trigger if it has a schedule expression.

When you disable a rule, incoming events might continue to match to the
disabled rule. Allow a short period of time for changes to take effect.
}
\section{Request syntax}{
\preformatted{svc$disable_rule(
  Name = "string",
  EventBusName = "string"
)
}
}

\keyword{internal}
