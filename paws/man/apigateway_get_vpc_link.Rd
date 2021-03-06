% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_vpc_link}
\alias{apigateway_get_vpc_link}
\title{Gets a specified VPC link under the caller's account in a region}
\usage{
apigateway_get_vpc_link(vpcLinkId)
}
\arguments{
\item{vpcLinkId}{[required] [Required] The identifier of the VpcLink. It is used in an Integration
to reference this VpcLink.}
}
\description{
Gets a specified VPC link under the caller's account in a region.
}
\section{Request syntax}{
\preformatted{svc$get_vpc_link(
  vpcLinkId = "string"
)
}
}

\keyword{internal}
