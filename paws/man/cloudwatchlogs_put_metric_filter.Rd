% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_put_metric_filter}
\alias{cloudwatchlogs_put_metric_filter}
\title{Creates or updates a metric filter and associates it with the specified
log group}
\usage{
cloudwatchlogs_put_metric_filter(logGroupName, filterName,
  filterPattern, metricTransformations)
}
\arguments{
\item{logGroupName}{[required] The name of the log group.}

\item{filterName}{[required] A name for the metric filter.}

\item{filterPattern}{[required] A filter pattern for extracting metric data out of ingested log events.}

\item{metricTransformations}{[required] A collection of information that defines how metric data gets emitted.}
}
\description{
Creates or updates a metric filter and associates it with the specified
log group. Metric filters allow you to configure rules to extract metric
data from log events ingested through
\href{https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html}{PutLogEvents}.

The maximum number of metric filters that can be associated with a log
group is 100.
}
\section{Request syntax}{
\preformatted{svc$put_metric_filter(
  logGroupName = "string",
  filterName = "string",
  filterPattern = "string",
  metricTransformations = list(
    list(
      metricName = "string",
      metricNamespace = "string",
      metricValue = "string",
      defaultValue = 123.0
    )
  )
)
}
}

\keyword{internal}
