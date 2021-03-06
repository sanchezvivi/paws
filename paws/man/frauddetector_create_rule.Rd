% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_create_rule}
\alias{frauddetector_create_rule}
\title{Creates a rule for use with the specified detector}
\usage{
frauddetector_create_rule(ruleId, detectorId, description, expression,
  language, outcomes, tags)
}
\arguments{
\item{ruleId}{[required] The rule ID.}

\item{detectorId}{[required] The detector ID for the rule's parent detector.}

\item{description}{The rule description.}

\item{expression}{[required] The rule expression.}

\item{language}{[required] The language of the rule.}

\item{outcomes}{[required] The outcome or outcomes returned when the rule expression matches.}

\item{tags}{A collection of key and value pairs.}
}
\description{
Creates a rule for use with the specified detector.
}
\section{Request syntax}{
\preformatted{svc$create_rule(
  ruleId = "string",
  detectorId = "string",
  description = "string",
  expression = "string",
  language = "DETECTORPL",
  outcomes = list(
    "string"
  ),
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

\keyword{internal}
