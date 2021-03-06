% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/braket_operations.R
\name{braket_get_quantum_task}
\alias{braket_get_quantum_task}
\title{Retrieves the specified quantum task}
\usage{
braket_get_quantum_task(quantumTaskArn)
}
\arguments{
\item{quantumTaskArn}{[required] the ARN of the task to retrieve.}
}
\description{
Retrieves the specified quantum task.
}
\section{Request syntax}{
\preformatted{svc$get_quantum_task(
  quantumTaskArn = "string"
)
}
}

\keyword{internal}
