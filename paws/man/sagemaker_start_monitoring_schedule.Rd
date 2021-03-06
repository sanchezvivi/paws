% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_start_monitoring_schedule}
\alias{sagemaker_start_monitoring_schedule}
\title{Starts a previously stopped monitoring schedule}
\usage{
sagemaker_start_monitoring_schedule(MonitoringScheduleName)
}
\arguments{
\item{MonitoringScheduleName}{[required] The name of the schedule to start.}
}
\description{
Starts a previously stopped monitoring schedule.

By default, when you successfully create a new schedule, the status of a
monitoring schedule is \code{scheduled}.
}
\section{Request syntax}{
\preformatted{svc$start_monitoring_schedule(
  MonitoringScheduleName = "string"
)
}
}

\keyword{internal}
