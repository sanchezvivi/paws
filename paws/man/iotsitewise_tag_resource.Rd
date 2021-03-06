% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotsitewise_operations.R
\name{iotsitewise_tag_resource}
\alias{iotsitewise_tag_resource}
\title{Adds tags to an AWS IoT SiteWise resource}
\usage{
iotsitewise_tag_resource(resourceArn, tags)
}
\arguments{
\item{resourceArn}{[required] The
\href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html}{ARN}
of the resource to tag.}

\item{tags}{[required] A list of key-value pairs that contain metadata for the resource. For
more information, see \href{https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html}{Tagging your AWS IoT SiteWise resources}
in the \emph{AWS IoT SiteWise User Guide}.}
}
\description{
Adds tags to an AWS IoT SiteWise resource. If a tag already exists for
the resource, this operation updates the tag's value.
}
\section{Request syntax}{
\preformatted{svc$tag_resource(
  resourceArn = "string",
  tags = list(
    "string"
  )
)
}
}

\keyword{internal}
