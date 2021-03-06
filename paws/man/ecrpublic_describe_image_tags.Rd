% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecrpublic_operations.R
\name{ecrpublic_describe_image_tags}
\alias{ecrpublic_describe_image_tags}
\title{Returns the image tag details for a repository in a public registry}
\usage{
ecrpublic_describe_image_tags(registryId, repositoryName, nextToken,
  maxResults)
}
\arguments{
\item{registryId}{The AWS account ID associated with the public registry that contains the
repository in which to describe images. If you do not specify a
registry, the default public registry is assumed.}

\item{repositoryName}{[required] The name of the repository that contains the image tag details to
describe.}

\item{nextToken}{The \code{nextToken} value returned from a previous paginated
\code{DescribeImageTags} request where \code{maxResults} was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the \code{nextToken} value. This value
is \code{null} when there are no more results to return. This option cannot
be used when you specify images with \code{imageIds}.}

\item{maxResults}{The maximum number of repository results returned by \code{DescribeImageTags}
in paginated output. When this parameter is used, \code{DescribeImageTags}
only returns \code{maxResults} results in a single page along with a
\code{nextToken} response element. The remaining results of the initial
request can be seen by sending another \code{DescribeImageTags} request with
the returned \code{nextToken} value. This value can be between 1 and 1000. If
this parameter is not used, then \code{DescribeImageTags} returns up to 100
results and a \code{nextToken} value, if applicable. This option cannot be
used when you specify images with \code{imageIds}.}
}
\description{
Returns the image tag details for a repository in a public registry.
}
\section{Request syntax}{
\preformatted{svc$describe_image_tags(
  registryId = "string",
  repositoryName = "string",
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
