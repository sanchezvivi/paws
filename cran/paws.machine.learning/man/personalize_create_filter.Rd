% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalize_operations.R
\name{personalize_create_filter}
\alias{personalize_create_filter}
\title{Creates a recommendation filter}
\usage{
personalize_create_filter(name, datasetGroupArn, filterExpression)
}
\arguments{
\item{name}{[required] The name of the filter to create.}

\item{datasetGroupArn}{[required] The ARN of the dataset group that the filter will belong to.}

\item{filterExpression}{[required] The filter expression that designates the interaction types that the
filter will filter out. A filter expression must follow the following
format:

\verb{EXCLUDE itemId WHERE INTERACTIONS.event_type in ("EVENT_TYPE")}

Where "EVENT\\_TYPE" is the type of event to filter out. To filter out
all items with any interactions history, set \code{"*"} as the EVENT\\_TYPE.
For more information, see \href{https://docs.aws.amazon.com/personalize/latest/dg/}{Using Filters with Amazon Personalize}.}
}
\description{
Creates a recommendation filter. For more information, see \href{https://docs.aws.amazon.com/personalize/latest/dg/}{Using Filters with Amazon Personalize}.
}
\section{Request syntax}{
\preformatted{svc$create_filter(
  name = "string",
  datasetGroupArn = "string",
  filterExpression = "string"
)
}
}

\keyword{internal}
