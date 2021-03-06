% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gluedatabrew_operations.R
\name{gluedatabrew_tag_resource}
\alias{gluedatabrew_tag_resource}
\title{Adds metadata tags to an AWS Glue DataBrew resource, such as a dataset,
job, project, or recipe}
\usage{
gluedatabrew_tag_resource(ResourceArn, Tags)
}
\arguments{
\item{ResourceArn}{[required] The DataBrew resource to which tags should be added. The value for this
parameter is an Amazon Resource Name (ARN). For DataBrew, you can tag a
dataset, a job, a project, or a recipe.}

\item{Tags}{[required] One or more tags to be assigned to the resource.}
}
\description{
Adds metadata tags to an AWS Glue DataBrew resource, such as a dataset,
job, project, or recipe.
}
\section{Request syntax}{
\preformatted{svc$tag_resource(
  ResourceArn = "string",
  Tags = list(
    "string"
  )
)
}
}

\keyword{internal}
