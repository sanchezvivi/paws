% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotdeviceadvisor_operations.R
\name{iotdeviceadvisor_list_suite_definitions}
\alias{iotdeviceadvisor_list_suite_definitions}
\title{Lists the Device Advisor test suites you have created}
\usage{
iotdeviceadvisor_list_suite_definitions(maxResults, nextToken)
}
\arguments{
\item{maxResults}{Request the list of all the Device Advisor test suites.}

\item{nextToken}{Requests the Device Advisor test suites next token.}
}
\description{
Lists the Device Advisor test suites you have created.
}
\section{Request syntax}{
\preformatted{svc$list_suite_definitions(
  maxResults = 123,
  nextToken = "string"
)
}
}

\keyword{internal}
