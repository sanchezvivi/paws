% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_put_kms_encryption_key}
\alias{frauddetector_put_kms_encryption_key}
\title{Specifies the Key Management Service (KMS) customer master key (CMK) to
be used to encrypt content in Amazon Fraud Detector}
\usage{
frauddetector_put_kms_encryption_key(kmsEncryptionKeyArn)
}
\arguments{
\item{kmsEncryptionKeyArn}{[required] The KMS encryption key ARN.}
}
\description{
Specifies the Key Management Service (KMS) customer master key (CMK) to
be used to encrypt content in Amazon Fraud Detector.
}
\section{Request syntax}{
\preformatted{svc$put_kms_encryption_key(
  kmsEncryptionKeyArn = "string"
)
}
}

\keyword{internal}
