% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_delete_security_configuration}
\alias{glue_delete_security_configuration}
\title{Deletes a specified security configuration}
\usage{
glue_delete_security_configuration(Name)
}
\arguments{
\item{Name}{[required] The name of the security configuration to delete.}
}
\description{
Deletes a specified security configuration.
}
\section{Request syntax}{
\preformatted{svc$delete_security_configuration(
  Name = "string"
)
}
}

\keyword{internal}
