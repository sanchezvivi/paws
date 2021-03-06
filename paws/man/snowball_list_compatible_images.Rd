% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snowball_operations.R
\name{snowball_list_compatible_images}
\alias{snowball_list_compatible_images}
\title{This action returns a list of the different Amazon EC2 Amazon Machine
Images (AMIs) that are owned by your AWS account that would be supported
for use on a Snow device}
\usage{
snowball_list_compatible_images(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The maximum number of results for the list of compatible images.
Currently, a Snowball Edge device can store 10 AMIs.}

\item{NextToken}{HTTP requests are stateless. To identify what object comes "next" in the
list of compatible images, you can specify a value for \code{NextToken} as
the starting point for your list of returned images.}
}
\description{
This action returns a list of the different Amazon EC2 Amazon Machine
Images (AMIs) that are owned by your AWS account that would be supported
for use on a Snow device. Currently, supported AMIs are based on the
CentOS 7 (x86\\_64) - with Updates HVM, Ubuntu Server 14.04 LTS (HVM),
and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the AWS
Marketplace.
}
\section{Request syntax}{
\preformatted{svc$list_compatible_images(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
