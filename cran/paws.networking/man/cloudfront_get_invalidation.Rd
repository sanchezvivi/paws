% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_get_invalidation}
\alias{cloudfront_get_invalidation}
\title{Get the information about an invalidation}
\usage{
cloudfront_get_invalidation(DistributionId, Id)
}
\arguments{
\item{DistributionId}{[required] The distribution's ID.}

\item{Id}{[required] The identifier for the invalidation request, for example,
\code{IDFDVBD632BHDS5}.}
}
\description{
Get the information about an invalidation.
}
\section{Request syntax}{
\preformatted{svc$get_invalidation(
  DistributionId = "string",
  Id = "string"
)
}
}

\keyword{internal}
