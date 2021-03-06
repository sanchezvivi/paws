% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/macie2_operations.R
\name{macie2_delete_findings_filter}
\alias{macie2_delete_findings_filter}
\title{Deletes a findings filter}
\usage{
macie2_delete_findings_filter(id)
}
\arguments{
\item{id}{[required] The unique identifier for the Amazon Macie resource or account that the
request applies to.}
}
\description{
Deletes a findings filter.
}
\section{Request syntax}{
\preformatted{svc$delete_findings_filter(
  id = "string"
)
}
}

\keyword{internal}
