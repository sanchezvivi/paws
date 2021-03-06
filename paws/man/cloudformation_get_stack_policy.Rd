% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_get_stack_policy}
\alias{cloudformation_get_stack_policy}
\title{Returns the stack policy for a specified stack}
\usage{
cloudformation_get_stack_policy(StackName)
}
\arguments{
\item{StackName}{[required] The name or unique stack ID that is associated with the stack whose
policy you want to get.}
}
\description{
Returns the stack policy for a specified stack. If a stack doesn't have
a policy, a null value is returned.
}
\section{Request syntax}{
\preformatted{svc$get_stack_policy(
  StackName = "string"
)
}
}

\keyword{internal}
