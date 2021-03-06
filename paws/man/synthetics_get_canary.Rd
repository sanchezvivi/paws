% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/synthetics_operations.R
\name{synthetics_get_canary}
\alias{synthetics_get_canary}
\title{Retrieves complete information about one canary}
\usage{
synthetics_get_canary(Name)
}
\arguments{
\item{Name}{[required] The name of the canary that you want details for.}
}
\description{
Retrieves complete information about one canary. You must specify the
name of the canary that you want. To get a list of canaries and their
names, use
\href{https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html}{DescribeCanaries}.
}
\section{Request syntax}{
\preformatted{svc$get_canary(
  Name = "string"
)
}
}

\keyword{internal}
