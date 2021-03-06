% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudsearch_operations.R
\name{cloudsearch_update_service_access_policies}
\alias{cloudsearch_update_service_access_policies}
\title{Configures the access rules that control access to the domain's document
and search endpoints}
\usage{
cloudsearch_update_service_access_policies(DomainName, AccessPolicies)
}
\arguments{
\item{DomainName}{[required]}

\item{AccessPolicies}{[required] The access rules you want to configure. These rules replace any existing
rules.}
}
\description{
Configures the access rules that control access to the domain's document
and search endpoints. For more information, see \href{https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html}{Configuring Access for an Amazon CloudSearch Domain}.
}
\section{Request syntax}{
\preformatted{svc$update_service_access_policies(
  DomainName = "string",
  AccessPolicies = "string"
)
}
}

\keyword{internal}
