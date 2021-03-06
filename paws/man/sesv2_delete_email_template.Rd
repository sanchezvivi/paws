% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_delete_email_template}
\alias{sesv2_delete_email_template}
\title{Deletes an email template}
\usage{
sesv2_delete_email_template(TemplateName)
}
\arguments{
\item{TemplateName}{[required] The name of the template to be deleted.}
}
\description{
Deletes an email template.

You can execute this operation no more than once per second.
}
\section{Request syntax}{
\preformatted{svc$delete_email_template(
  TemplateName = "string"
)
}
}

\keyword{internal}
