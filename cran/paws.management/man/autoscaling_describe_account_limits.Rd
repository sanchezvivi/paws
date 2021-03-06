% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_describe_account_limits}
\alias{autoscaling_describe_account_limits}
\title{Describes the current Amazon EC2 Auto Scaling resource quotas for your
AWS account}
\usage{
autoscaling_describe_account_limits()
}
\description{
Describes the current Amazon EC2 Auto Scaling resource quotas for your
AWS account.

For information about requesting an increase, see \href{https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html}{Amazon EC2 Auto Scaling service quotas}
in the \emph{Amazon EC2 Auto Scaling User Guide}.
}
\examples{
\dontrun{
# This example describes the Auto Scaling limits for your AWS account.
svc$describe_account_limits()
}

}
\keyword{internal}
