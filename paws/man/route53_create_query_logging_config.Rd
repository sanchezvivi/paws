% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_create_query_logging_config}
\alias{route53_create_query_logging_config}
\title{Creates a configuration for DNS query logging}
\usage{
route53_create_query_logging_config(HostedZoneId,
  CloudWatchLogsLogGroupArn)
}
\arguments{
\item{HostedZoneId}{[required] The ID of the hosted zone that you want to log queries for. You can log
queries only for public hosted zones.}

\item{CloudWatchLogsLogGroupArn}{[required] The Amazon Resource Name (ARN) for the log group that you want to Amazon
Route 53 to send query logs to. This is the format of the ARN:

arn:aws:logs:\emph{region}:\emph{account-id}:log-group:\emph{log\\_group\\_name}

To get the ARN for a log group, you can use the CloudWatch console, the
\href{https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogGroups.html}{DescribeLogGroups}
API action, the
\href{https://docs.aws.amazon.com/cli/latest/reference/logs/describe-log-groups.html}{describe-log-groups}
command, or the applicable command in one of the AWS SDKs.}
}
\description{
Creates a configuration for DNS query logging. After you create a query
logging configuration, Amazon Route 53 begins to publish log data to an
Amazon CloudWatch Logs log group.

DNS query logs contain information about the queries that Route 53
receives for a specified public hosted zone, such as the following:
\itemize{
\item Route 53 edge location that responded to the DNS query
\item Domain or subdomain that was requested
\item DNS record type, such as A or AAAA
\item DNS response code, such as \code{NoError} or \code{ServFail}
}
\subsection{Log Group and Resource Policy}{

Before you create a query logging configuration, perform the following
operations.

If you create a query logging configuration using the Route 53 console,
Route 53 performs these operations automatically.
\enumerate{
\item Create a CloudWatch Logs log group, and make note of the ARN, which
you specify when you create a query logging configuration. Note the
following:
\itemize{
\item You must create the log group in the us-east-1 region.
\item You must use the same AWS account to create the log group and
the hosted zone that you want to configure query logging for.
\item When you create log groups for query logging, we recommend that
you use a consistent prefix, for example:

\verb{/aws/route53/<i>hosted zone name</i> }

In the next step, you'll create a resource policy, which
controls access to one or more log groups and the associated AWS
resources, such as Route 53 hosted zones. There's a limit on the
number of resource policies that you can create, so we recommend
that you use a consistent prefix so you can use the same
resource policy for all the log groups that you create for query
logging.
}
\item Create a CloudWatch Logs resource policy, and give it the
permissions that Route 53 needs to create log streams and to send
query logs to log streams. For the value of \code{Resource}, specify the
ARN for the log group that you created in the previous step. To use
the same resource policy for all the CloudWatch Logs log groups that
you created for query logging configurations, replace the hosted
zone name with \code{*}, for example:

\verb{arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*}

You can't use the CloudWatch console to create or edit a resource
policy. You must use the CloudWatch API, one of the AWS SDKs, or the
AWS CLI.
}
}

\subsection{Log Streams and Edge Locations}{

When Route 53 finishes creating the configuration for DNS query logging,
it does the following:
\itemize{
\item Creates a log stream for an edge location the first time that the
edge location responds to DNS queries for the specified hosted zone.
That log stream is used to log all queries that Route 53 responds to
for that edge location.
\item Begins to send query logs to the applicable log stream.
}

The name of each log stream is in the following format:

\verb{<i>hosted zone ID</i>/<i>edge location code</i>}

The edge location code is a three-letter code and an arbitrarily
assigned number, for example, DFW3. The three-letter code typically
corresponds with the International Air Transport Association airport
code for an airport near the edge location. (These abbreviations might
change in the future.) For a list of edge locations, see "The Route 53
Global Network" on the \href{https://aws.amazon.com/route53/features/}{Route 53 Product Details} page.
}

\subsection{Queries That Are Logged}{

Query logs contain only the queries that DNS resolvers forward to Route
53. If a DNS resolver has already cached the response to a query (such
as the IP address for a load balancer for example.com), the resolver
will continue to return the cached response. It doesn't forward another
query to Route 53 until the TTL for the corresponding resource record
set expires. Depending on how many DNS queries are submitted for a
resource record set, and depending on the TTL for that resource record
set, query logs might contain information about only one query out of
every several thousand queries that are submitted to DNS. For more
information about how DNS works, see \href{https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html}{Routing Internet Traffic to Your Website or Web Application}
in the \emph{Amazon Route 53 Developer Guide}.
}

\subsection{Log File Format}{

For a list of the values in each query log and the format of each value,
see \href{https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html}{Logging DNS Queries}
in the \emph{Amazon Route 53 Developer Guide}.
}

\subsection{Pricing}{

For information about charges for query logs, see \href{https://aws.amazon.com/cloudwatch/pricing/}{Amazon CloudWatch Pricing}.
}

\subsection{How to Stop Logging}{

If you want Route 53 to stop sending query logs to CloudWatch Logs,
delete the query logging configuration. For more information, see
\href{https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteQueryLoggingConfig.html}{DeleteQueryLoggingConfig}.
}
}
\section{Request syntax}{
\preformatted{svc$create_query_logging_config(
  HostedZoneId = "string",
  CloudWatchLogsLogGroupArn = "string"
)
}
}

\keyword{internal}
