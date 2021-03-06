% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gluedatabrew_operations.R
\name{gluedatabrew_describe_dataset}
\alias{gluedatabrew_describe_dataset}
\title{Returns the definition of a specific AWS Glue DataBrew dataset that is
in the current AWS account}
\usage{
gluedatabrew_describe_dataset(Name)
}
\arguments{
\item{Name}{[required] The name of the dataset to be described.}
}
\description{
Returns the definition of a specific AWS Glue DataBrew dataset that is
in the current AWS account.
}
\section{Request syntax}{
\preformatted{svc$describe_dataset(
  Name = "string"
)
}
}

\keyword{internal}
