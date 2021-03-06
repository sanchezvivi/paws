% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafv2_operations.R
\name{wafv2_get_permission_policy}
\alias{wafv2_get_permission_policy}
\title{Returns the IAM policy that is attached to the specified rule group}
\usage{
wafv2_get_permission_policy(ResourceArn)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the rule group for which you want to
get the policy.}
}
\description{
Returns the IAM policy that is attached to the specified rule group.

You must be the owner of the rule group to perform this operation.
}
\section{Request syntax}{
\preformatted{svc$get_permission_policy(
  ResourceArn = "string"
)
}
}

\keyword{internal}
