% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gluedatabrew_operations.R
\name{gluedatabrew_delete_job}
\alias{gluedatabrew_delete_job}
\title{Deletes the specified AWS Glue DataBrew job from the current AWS account}
\usage{
gluedatabrew_delete_job(Name)
}
\arguments{
\item{Name}{[required] The name of the job to be deleted.}
}
\description{
Deletes the specified AWS Glue DataBrew job from the current AWS
account. The job can be for a recipe or for a profile.
}
\section{Request syntax}{
\preformatted{svc$delete_job(
  Name = "string"
)
}
}

\keyword{internal}
