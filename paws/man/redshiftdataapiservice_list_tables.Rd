% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshiftdataapiservice_operations.R
\name{redshiftdataapiservice_list_tables}
\alias{redshiftdataapiservice_list_tables}
\title{List the tables in a database}
\usage{
redshiftdataapiservice_list_tables(ClusterIdentifier, Database, DbUser,
  MaxResults, NextToken, SchemaPattern, SecretArn, TablePattern)
}
\arguments{
\item{ClusterIdentifier}{[required] The cluster identifier. This parameter is required when authenticating
using either AWS Secrets Manager or temporary credentials.}

\item{Database}{[required] The name of the database. This parameter is required when authenticating
using temporary credentials.}

\item{DbUser}{The database user name. This parameter is required when authenticating
using temporary credentials.}

\item{MaxResults}{The maximum number of tables to return in the response. If more tables
exist than fit in one response, then \code{NextToken} is returned to page
through the results.}

\item{NextToken}{A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have been
retrieved for the request.}

\item{SchemaPattern}{A pattern to filter results by schema name. Within a schema pattern, "\%"
means match any substring of 0 or more characters and "\\_" means match
any one character. Only schema name entries matching the search pattern
are returned. If \code{SchemaPattern} is not specified, then all tables that
match \code{TablePattern} are returned. If neither \code{SchemaPattern} or
\code{TablePattern} are specified, then all tables are returned.}

\item{SecretArn}{The name or ARN of the secret that enables access to the database. This
parameter is required when authenticating using AWS Secrets Manager.}

\item{TablePattern}{A pattern to filter results by table name. Within a table pattern, "\%"
means match any substring of 0 or more characters and "\\_" means match
any one character. Only table name entries matching the search pattern
are returned. If \code{TablePattern} is not specified, then all tables that
match \code{SchemaPattern}are returned. If neither \code{SchemaPattern} or
\code{TablePattern} are specified, then all tables are returned.}
}
\description{
List the tables in a database. If neither \code{SchemaPattern} nor
\code{TablePattern} are specified, then all tables in the database are
returned. A token is returned to page through the table list. Depending
on the authorization method, use one of the following combinations of
request parameters:
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
\preformatted{svc$list_tables(
  ClusterIdentifier = "string",
  Database = "string",
  DbUser = "string",
  MaxResults = 123,
  NextToken = "string",
  SchemaPattern = "string",
  SecretArn = "string",
  TablePattern = "string"
)
}
}

\keyword{internal}
