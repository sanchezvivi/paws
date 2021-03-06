% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_stop_stack}
\alias{opsworks_stop_stack}
\title{Stops a specified stack}
\usage{
opsworks_stop_stack(StackId)
}
\arguments{
\item{StackId}{[required] The stack ID.}
}
\description{
Stops a specified stack.

\strong{Required Permissions}: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Request syntax}{
\preformatted{svc$stop_stack(
  StackId = "string"
)
}
}

\keyword{internal}
