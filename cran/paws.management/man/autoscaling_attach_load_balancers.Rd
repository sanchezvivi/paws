% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_attach_load_balancers}
\alias{autoscaling_attach_load_balancers}
\title{To attach an Application Load Balancer, Network Load Balancer, or
Gateway Load Balancer, use the AttachLoadBalancerTargetGroups API
operation instead}
\usage{
autoscaling_attach_load_balancers(AutoScalingGroupName,
  LoadBalancerNames)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{LoadBalancerNames}{[required] The names of the load balancers. You can specify up to 10 load
balancers.}
}
\description{
To attach an Application Load Balancer, Network Load Balancer, or
Gateway Load Balancer, use the AttachLoadBalancerTargetGroups API
operation instead.

Attaches one or more Classic Load Balancers to the specified Auto
Scaling group. Amazon EC2 Auto Scaling registers the running instances
with these Classic Load Balancers.

To describe the load balancers for an Auto Scaling group, call the
DescribeLoadBalancers API. To detach the load balancer from the Auto
Scaling group, call the DetachLoadBalancers API.

For more information, see \href{https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html}{Elastic Load Balancing and Amazon EC2 Auto Scaling}
in the \emph{Amazon EC2 Auto Scaling User Guide}.
}
\section{Request syntax}{
\preformatted{svc$attach_load_balancers(
  AutoScalingGroupName = "string",
  LoadBalancerNames = list(
    "string"
  )
)
}
}

\examples{
\dontrun{
# This example attaches the specified load balancer to the specified Auto
# Scaling group.
svc$attach_load_balancers(
  AutoScalingGroupName = "my-auto-scaling-group",
  LoadBalancerNames = list(
    "my-load-balancer"
  )
)
}

}
\keyword{internal}
