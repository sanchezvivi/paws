% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mediaconvert_operations.R
\name{mediaconvert_get_job_template}
\alias{mediaconvert_get_job_template}
\title{Retrieve the JSON for a specific job template}
\usage{
mediaconvert_get_job_template(Name)
}
\arguments{
\item{Name}{[required] The name of the job template.}
}
\description{
Retrieve the JSON for a specific job template.
}
\section{Request syntax}{
\preformatted{svc$get_job_template(
  Name = "string"
)
}
}

\keyword{internal}
