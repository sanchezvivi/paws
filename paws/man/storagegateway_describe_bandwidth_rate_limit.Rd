% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_describe_bandwidth_rate_limit}
\alias{storagegateway_describe_bandwidth_rate_limit}
\title{Returns the bandwidth rate limits of a gateway}
\usage{
storagegateway_describe_bandwidth_rate_limit(GatewayARN)
}
\arguments{
\item{GatewayARN}{[required]}
}
\description{
Returns the bandwidth rate limits of a gateway. By default, these limits
are not set, which means no bandwidth rate limiting is in effect. This
operation is supported for the stored volume, cached volume, and tape
gateway types.

This operation only returns a value for a bandwidth rate limit only if
the limit is set. If no limits are set for the gateway, then this
operation returns only the gateway ARN in the response body. To specify
which gateway to describe, use the Amazon Resource Name (ARN) of the
gateway in your request.
}
\section{Request syntax}{
\preformatted{svc$describe_bandwidth_rate_limit(
  GatewayARN = "string"
)
}
}

\examples{
\dontrun{
# Returns a value for a bandwidth rate limit if set. If not set, then only
# the gateway ARN is returned.
svc$describe_bandwidth_rate_limit(
  GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
}

}
\keyword{internal}
