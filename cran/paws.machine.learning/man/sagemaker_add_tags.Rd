% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_add_tags}
\alias{sagemaker_add_tags}
\title{Adds or overwrites one or more tags for the specified Amazon SageMaker
resource}
\usage{
sagemaker_add_tags(ResourceArn, Tags)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the resource that you want to tag.}

\item{Tags}{[required] An array of key-value pairs. You can use tags to categorize your AWS
resources in different ways, for example, by purpose, owner, or
environment. For more information, see \href{https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html}{Tagging AWS Resources}.}
}
\description{
Adds or overwrites one or more tags for the specified Amazon SageMaker
resource. You can add tags to notebook instances, training jobs,
hyperparameter tuning jobs, batch transform jobs, models, labeling jobs,
work teams, endpoint configurations, and endpoints.

Each tag consists of a key and an optional value. Tag keys must be
unique per resource. For more information about tags, see For more
information, see \href{https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf}{AWS Tagging Strategies}.

Tags that you add to a hyperparameter tuning job by calling this API are
also added to any training jobs that the hyperparameter tuning job
launches after you call this API, but not to training jobs that the
hyperparameter tuning job launched before you called this API. To make
sure that the tags associated with a hyperparameter tuning job are also
added to all training jobs that the hyperparameter tuning job launches,
add the tags when you first create the tuning job by specifying them in
the \code{Tags} parameter of CreateHyperParameterTuningJob
}
\section{Request syntax}{
\preformatted{svc$add_tags(
  ResourceArn = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
