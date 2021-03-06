% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lookoutforvision_operations.R
\name{lookoutforvision_update_dataset_entries}
\alias{lookoutforvision_update_dataset_entries}
\title{Adds one or more JSON Line entries to a dataset}
\usage{
lookoutforvision_update_dataset_entries(ProjectName, DatasetType,
  Changes, ClientToken)
}
\arguments{
\item{ProjectName}{[required] The name of the project that contains the dataset that you want to
update.}

\item{DatasetType}{[required] The type of the dataset that you want to update. Specify \code{train} to
update the training dataset. Specify \code{test} to update the test dataset.
If you have a single dataset project, specify \code{train}.}

\item{Changes}{[required] The entries to add to the dataset.}

\item{ClientToken}{ClientToken is an idempotency token that ensures a call to
\code{UpdateDatasetEntries} completes only once. You choose the value to
pass. For example, An issue, such as an network outage, might prevent
you from getting a response from \code{UpdateDatasetEntries}. In this case,
safely retry your call to \code{UpdateDatasetEntries} by using the same
\code{ClientToken} parameter value. An error occurs if the other input
parameters are not the same as in the first request. Using a different
value for \code{ClientToken} is considered a new call to
\code{UpdateDatasetEntries}. An idempotency token is active for 8 hours.}
}
\description{
Adds one or more JSON Line entries to a dataset. A JSON Line includes
information about an image used for training or testing an Amazon
Lookout for Vision model. The following is an example JSON Line.

Updating a dataset might take a while to complete. To check the current
status, call DescribeDataset and check the \code{Status} field in the
response.
}
\section{Request syntax}{
\preformatted{svc$update_dataset_entries(
  ProjectName = "string",
  DatasetType = "string",
  Changes = raw,
  ClientToken = "string"
)
}
}

\keyword{internal}
