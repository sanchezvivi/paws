% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_register_ca_certificate}
\alias{iot_register_ca_certificate}
\title{Registers a CA certificate with AWS IoT}
\usage{
iot_register_ca_certificate(caCertificate, verificationCertificate,
  setAsActive, allowAutoRegistration, registrationConfig, tags)
}
\arguments{
\item{caCertificate}{[required] The CA certificate.}

\item{verificationCertificate}{[required] The private key verification certificate.}

\item{setAsActive}{A boolean value that specifies if the CA certificate is set to active.}

\item{allowAutoRegistration}{Allows this CA certificate to be used for auto registration of device
certificates.}

\item{registrationConfig}{Information about the registration configuration.}

\item{tags}{Metadata which can be used to manage the CA certificate.

For URI Request parameters use format: ...key1=value1&key2=value2...

For the CLI command-line parameter use format: &&tags
"key1=value1&key2=value2..."

For the cli-input-json file use format: "tags":
"key1=value1&key2=value2..."}
}
\description{
Registers a CA certificate with AWS IoT. This CA certificate can then be
used to sign device certificates, which can be then registered with AWS
IoT. You can register up to 10 CA certificates per AWS account that have
the same subject field. This enables you to have up to 10 certificate
authorities sign your device certificates. If you have more than one CA
certificate registered, make sure you pass the CA certificate when you
register your device certificates with the RegisterCertificate API.
}
\section{Request syntax}{
\preformatted{svc$register_ca_certificate(
  caCertificate = "string",
  verificationCertificate = "string",
  setAsActive = TRUE|FALSE,
  allowAutoRegistration = TRUE|FALSE,
  registrationConfig = list(
    templateBody = "string",
    roleArn = "string"
  ),
  tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
