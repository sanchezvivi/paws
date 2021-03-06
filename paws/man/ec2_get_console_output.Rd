% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_get_console_output}
\alias{ec2_get_console_output}
\title{Gets the console output for the specified instance}
\usage{
ec2_get_console_output(InstanceId, DryRun, Latest)
}
\arguments{
\item{InstanceId}{[required] The ID of the instance.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Latest}{When enabled, retrieves the latest console output for the instance.

Default: disabled (\code{false})}
}
\description{
Gets the console output for the specified instance. For Linux instances,
the instance console output displays the exact console output that would
normally be displayed on a physical monitor attached to a computer. For
Windows instances, the instance console output includes the last three
system event log errors.

By default, the console output returns buffered information that was
posted shortly after an instance transition state (start, stop, reboot,
or terminate). This information is available for at least one hour after
the most recent post. Only the most recent 64 KB of console output is
available.

You can optionally retrieve the latest serial console output at any time
during the instance lifecycle. This option is supported on instance
types that use the Nitro hypervisor.

For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html#instance-console-console-output}{Instance Console Output}
in the \emph{Amazon Elastic Compute Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$get_console_output(
  InstanceId = "string",
  DryRun = TRUE|FALSE,
  Latest = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# This example gets the console output for the specified instance.
svc$get_console_output(
  InstanceId = "i-1234567890abcdef0"
)
}

}
\keyword{internal}
