% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elbv2_operations.R
\name{elbv2_add_listener_certificates}
\alias{elbv2_add_listener_certificates}
\title{Adds the specified SSL server certificate to the certificate list for
the specified HTTPS or TLS listener}
\usage{
elbv2_add_listener_certificates(ListenerArn, Certificates)
}
\arguments{
\item{ListenerArn}{[required] The Amazon Resource Name (ARN) of the listener.}

\item{Certificates}{[required] The certificate to add. You can specify one certificate per call. Set
\code{CertificateArn} to the certificate ARN but do not set \code{IsDefault}.}
}
\description{
Adds the specified SSL server certificate to the certificate list for
the specified HTTPS or TLS listener.

If the certificate in already in the certificate list, the call is
successful but the certificate is not added again.

For more information, see \href{https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html}{HTTPS listeners}
in the \emph{Application Load Balancers Guide} or \href{https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html}{TLS listeners}
in the \emph{Network Load Balancers Guide}.
}
\section{Request syntax}{
\preformatted{svc$add_listener_certificates(
  ListenerArn = "string",
  Certificates = list(
    list(
      CertificateArn = "string",
      IsDefault = TRUE|FALSE
    )
  )
)
}
}

\keyword{internal}
