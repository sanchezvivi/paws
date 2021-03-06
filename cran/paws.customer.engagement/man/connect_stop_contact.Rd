% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_stop_contact}
\alias{connect_stop_contact}
\title{Ends the specified contact}
\usage{
connect_stop_contact(ContactId, InstanceId)
}
\arguments{
\item{ContactId}{[required] The ID of the contact.}

\item{InstanceId}{[required] The identifier of the Amazon Connect instance.}
}
\description{
Ends the specified contact.
}
\section{Request syntax}{
\preformatted{svc$stop_contact(
  ContactId = "string",
  InstanceId = "string"
)
}
}

\keyword{internal}
