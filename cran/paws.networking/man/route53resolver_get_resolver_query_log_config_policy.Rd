% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53resolver_operations.R
\name{route53resolver_get_resolver_query_log_config_policy}
\alias{route53resolver_get_resolver_query_log_config_policy}
\title{Gets information about a query logging policy}
\usage{
route53resolver_get_resolver_query_log_config_policy(Arn)
}
\arguments{
\item{Arn}{[required] The ARN of the query logging configuration that you want to get the
query logging policy for.}
}
\description{
Gets information about a query logging policy. A query logging policy
specifies the Resolver query logging operations and resources that you
want to allow another AWS account to be able to use.
}
\section{Request syntax}{
\preformatted{svc$get_resolver_query_log_config_policy(
  Arn = "string"
)
}
}

\keyword{internal}
