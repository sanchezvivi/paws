% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_get_server_certificate}
\alias{iam_get_server_certificate}
\title{Retrieves information about the specified server certificate stored in
IAM}
\usage{
iam_get_server_certificate(ServerCertificateName)
}
\arguments{
\item{ServerCertificateName}{[required] The name of the server certificate you want to retrieve information
about.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: \\_+=,.@-}
}
\description{
Retrieves information about the specified server certificate stored in
IAM.

For more information about working with server certificates, see
\href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html}{Working with Server Certificates}
in the \emph{IAM User Guide}. This topic includes a list of AWS services that
can use the server certificates that you manage with IAM.
}
\section{Request syntax}{
\preformatted{svc$get_server_certificate(
  ServerCertificateName = "string"
)
}
}

\keyword{internal}
