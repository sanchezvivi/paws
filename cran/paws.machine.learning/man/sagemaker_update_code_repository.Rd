% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_update_code_repository}
\alias{sagemaker_update_code_repository}
\title{Updates the specified Git repository with the specified values}
\usage{
sagemaker_update_code_repository(CodeRepositoryName, GitConfig)
}
\arguments{
\item{CodeRepositoryName}{[required] The name of the Git repository to update.}

\item{GitConfig}{The configuration of the git repository, including the URL and the
Amazon Resource Name (ARN) of the AWS Secrets Manager secret that
contains the credentials used to access the repository. The secret must
have a staging label of \code{AWSCURRENT} and must be in the following
format:

\verb{\\\{"username": <i>UserName</i>, "password": <i>Password</i>\\\}}}
}
\description{
Updates the specified Git repository with the specified values.
}
\section{Request syntax}{
\preformatted{svc$update_code_repository(
  CodeRepositoryName = "string",
  GitConfig = list(
    SecretArn = "string"
  )
)
}
}

\keyword{internal}
