% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshiftdataapiservice_operations.R
\name{redshiftdataapiservice_list_databases}
\alias{redshiftdataapiservice_list_databases}
\title{List the databases in a cluster}
\usage{
redshiftdataapiservice_list_databases(ClusterIdentifier, Database,
  DbUser, MaxResults, NextToken, SecretArn)
}
\arguments{
\item{ClusterIdentifier}{[required] The cluster identifier. This parameter is required when authenticating
using either AWS Secrets Manager or temporary credentials.}

\item{Database}{The name of the database. This parameter is required when authenticating
using temporary credentials.}

\item{DbUser}{The database user name. This parameter is required when authenticating
using temporary credentials.}

\item{MaxResults}{The maximum number of databases to return in the response. If more
databases exist than fit in one response, then \code{NextToken} is returned
to page through the results.}

\item{NextToken}{A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have been
retrieved for the request.}

\item{SecretArn}{The name or ARN of the secret that enables access to the database. This
parameter is required when authenticating using AWS Secrets Manager.}
}
\description{
List the databases in a cluster. A token is returned to page through the
database list. Depending on the authorization method, use one of the
following combinations of request parameters:
\itemize{
\item AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
secret and the cluster identifier that matches the cluster in the
secret.
\item Temporary credentials - specify the cluster identifier, the database
name, and the database user name. Permission to call the
\code{redshift:GetClusterCredentials} operation is required to use this
method.
}
}
\section{Request syntax}{
\preformatted{svc$list_databases(
  ClusterIdentifier = "string",
  Database = "string",
  DbUser = "string",
  MaxResults = 123,
  NextToken = "string",
  SecretArn = "string"
)
}
}

\keyword{internal}
