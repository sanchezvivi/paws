% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elb_operations.R
\name{elb_describe_load_balancer_policy_types}
\alias{elb_describe_load_balancer_policy_types}
\title{Describes the specified load balancer policy types or all load balancer
policy types}
\usage{
elb_describe_load_balancer_policy_types(PolicyTypeNames)
}
\arguments{
\item{PolicyTypeNames}{The names of the policy types. If no names are specified, describes all
policy types defined by Elastic Load Balancing.}
}
\description{
Describes the specified load balancer policy types or all load balancer
policy types.

The description of each type indicates how it can be used. For example,
some policies can be used only with layer 7 listeners, some policies can
be used only with layer 4 listeners, and some policies can be used only
with your EC2 instances.

You can use CreateLoadBalancerPolicy to create a policy configuration
for any of these policy types. Then, depending on the policy type, use
either SetLoadBalancerPoliciesOfListener or
SetLoadBalancerPoliciesForBackendServer to set the policy.
}
\section{Request syntax}{
\preformatted{svc$describe_load_balancer_policy_types(
  PolicyTypeNames = list(
    "string"
  )
)
}
}

\examples{
\dontrun{
# This example describes the specified load balancer policy type.
svc$describe_load_balancer_policy_types(
  PolicyTypeNames = list(
    "ProxyProtocolPolicyType"
  )
)
}

}
\keyword{internal}
