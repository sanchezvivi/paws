% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elb_operations.R
\name{elb_create_load_balancer_listeners}
\alias{elb_create_load_balancer_listeners}
\title{Creates one or more listeners for the specified load balancer}
\usage{
elb_create_load_balancer_listeners(LoadBalancerName, Listeners)
}
\arguments{
\item{LoadBalancerName}{[required] The name of the load balancer.}

\item{Listeners}{[required] The listeners.}
}
\description{
Creates one or more listeners for the specified load balancer. If a
listener with the specified port does not already exist, it is created;
otherwise, the properties of the new listener must match the properties
of the existing listener.

For more information, see \href{https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html}{Listeners for Your Classic Load Balancer}
in the \emph{Classic Load Balancers Guide}.
}
\section{Request syntax}{
\preformatted{svc$create_load_balancer_listeners(
  LoadBalancerName = "string",
  Listeners = list(
    list(
      Protocol = "string",
      LoadBalancerPort = 123,
      InstanceProtocol = "string",
      InstancePort = 123,
      SSLCertificateId = "string"
    )
  )
)
}
}

\examples{
\dontrun{
# This example creates a listener for your load balancer at port 80 using
# the HTTP protocol.
svc$create_load_balancer_listeners(
  Listeners = list(
    list(
      InstancePort = 80L,
      InstanceProtocol = "HTTP",
      LoadBalancerPort = 80L,
      Protocol = "HTTP"
    )
  ),
  LoadBalancerName = "my-load-balancer"
)

# This example creates a listener for your load balancer at port 443 using
# the HTTPS protocol.
svc$create_load_balancer_listeners(
  Listeners = list(
    list(
      InstancePort = 80L,
      InstanceProtocol = "HTTP",
      LoadBalancerPort = 443L,
      Protocol = "HTTPS",
      SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/my-server-cert"
    )
  ),
  LoadBalancerName = "my-load-balancer"
)
}

}
\keyword{internal}
