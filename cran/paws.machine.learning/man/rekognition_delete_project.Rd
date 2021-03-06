% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rekognition_operations.R
\name{rekognition_delete_project}
\alias{rekognition_delete_project}
\title{Deletes an Amazon Rekognition Custom Labels project}
\usage{
rekognition_delete_project(ProjectArn)
}
\arguments{
\item{ProjectArn}{[required] The Amazon Resource Name (ARN) of the project that you want to delete.}
}
\description{
Deletes an Amazon Rekognition Custom Labels project. To delete a project
you must first delete all models associated with the project. To delete
a model, see DeleteProjectVersion.

This operation requires permissions to perform the
\code{rekognition:DeleteProject} action.
}
\section{Request syntax}{
\preformatted{svc$delete_project(
  ProjectArn = "string"
)
}
}

\keyword{internal}
