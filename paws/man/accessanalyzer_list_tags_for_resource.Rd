% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accessanalyzer_operations.R
\name{accessanalyzer_list_tags_for_resource}
\alias{accessanalyzer_list_tags_for_resource}
\title{Retrieves a list of tags applied to the specified resource}
\usage{
accessanalyzer_list_tags_for_resource(resourceArn)
}
\arguments{
\item{resourceArn}{[required] The ARN of the resource to retrieve tags from.}
}
\description{
Retrieves a list of tags applied to the specified resource.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  resourceArn = "string"
)
}
}

\keyword{internal}
