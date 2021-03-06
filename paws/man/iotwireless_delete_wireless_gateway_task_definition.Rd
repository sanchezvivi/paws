% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotwireless_operations.R
\name{iotwireless_delete_wireless_gateway_task_definition}
\alias{iotwireless_delete_wireless_gateway_task_definition}
\title{Deletes a wireless gateway task definition}
\usage{
iotwireless_delete_wireless_gateway_task_definition(Id)
}
\arguments{
\item{Id}{[required] The ID of the resource to delete.}
}
\description{
Deletes a wireless gateway task definition. Deleting this task
definition does not affect tasks that are currently in progress.
}
\section{Request syntax}{
\preformatted{svc$delete_wireless_gateway_task_definition(
  Id = "string"
)
}
}

\keyword{internal}
