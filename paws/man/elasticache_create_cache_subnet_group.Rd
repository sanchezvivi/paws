% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticache_operations.R
\name{elasticache_create_cache_subnet_group}
\alias{elasticache_create_cache_subnet_group}
\title{Creates a new cache subnet group}
\usage{
elasticache_create_cache_subnet_group(CacheSubnetGroupName,
  CacheSubnetGroupDescription, SubnetIds)
}
\arguments{
\item{CacheSubnetGroupName}{[required] A name for the cache subnet group. This value is stored as a lowercase
string.

Constraints: Must contain no more than 255 alphanumeric characters or
hyphens.

Example: \code{mysubnetgroup}}

\item{CacheSubnetGroupDescription}{[required] A description for the cache subnet group.}

\item{SubnetIds}{[required] A list of VPC subnet IDs for the cache subnet group.}
}
\description{
Creates a new cache subnet group.

Use this parameter only when you are creating a cluster in an Amazon
Virtual Private Cloud (Amazon VPC).
}
\section{Request syntax}{
\preformatted{svc$create_cache_subnet_group(
  CacheSubnetGroupName = "string",
  CacheSubnetGroupDescription = "string",
  SubnetIds = list(
    "string"
  )
)
}
}

\keyword{internal}
