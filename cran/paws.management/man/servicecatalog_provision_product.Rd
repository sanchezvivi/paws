% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicecatalog_operations.R
\name{servicecatalog_provision_product}
\alias{servicecatalog_provision_product}
\title{Provisions the specified product}
\usage{
servicecatalog_provision_product(AcceptLanguage, ProductId, ProductName,
  ProvisioningArtifactId, ProvisioningArtifactName, PathId, PathName,
  ProvisionedProductName, ProvisioningParameters, ProvisioningPreferences,
  Tags, NotificationArns, ProvisionToken)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{ProductId}{The product identifier. You must provide the name or ID, but not both.}

\item{ProductName}{The name of the product. You must provide the name or ID, but not both.}

\item{ProvisioningArtifactId}{The identifier of the provisioning artifact. You must provide the name
or ID, but not both.}

\item{ProvisioningArtifactName}{The name of the provisioning artifact. You must provide the name or ID,
but not both.}

\item{PathId}{The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use ListLaunchPaths. You must
provide the name or ID, but not both.}

\item{PathName}{The name of the path. You must provide the name or ID, but not both.}

\item{ProvisionedProductName}{[required] A user-friendly name for the provisioned product. This value must be
unique for the AWS account and cannot be updated after the product is
provisioned.}

\item{ProvisioningParameters}{Parameters specified by the administrator that are required for
provisioning the product.}

\item{ProvisioningPreferences}{An object that contains information about the provisioning preferences
for a stack set.}

\item{Tags}{One or more tags.}

\item{NotificationArns}{Passed to CloudFormation. The SNS topic ARNs to which to publish
stack-related events.}

\item{ProvisionToken}{[required] An idempotency token that uniquely identifies the provisioning request.}
}
\description{
Provisions the specified product.

A provisioned product is a resourced instance of a product. For example,
provisioning a product based on a CloudFormation template launches a
CloudFormation stack and its underlying resources. You can check the
status of this request using DescribeRecord.

If the request contains a tag key with an empty list of values, there is
a tag conflict for that key. Do not include conflicted keys as tags, or
this causes the error "Parameter validation failed: Missing required
parameter in Tags[\emph{N}]:\emph{Value}".
}
\section{Request syntax}{
\preformatted{svc$provision_product(
  AcceptLanguage = "string",
  ProductId = "string",
  ProductName = "string",
  ProvisioningArtifactId = "string",
  ProvisioningArtifactName = "string",
  PathId = "string",
  PathName = "string",
  ProvisionedProductName = "string",
  ProvisioningParameters = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  ProvisioningPreferences = list(
    StackSetAccounts = list(
      "string"
    ),
    StackSetRegions = list(
      "string"
    ),
    StackSetFailureToleranceCount = 123,
    StackSetFailureTolerancePercentage = 123,
    StackSetMaxConcurrencyCount = 123,
    StackSetMaxConcurrencyPercentage = 123
  ),
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  NotificationArns = list(
    "string"
  ),
  ProvisionToken = "string"
)
}
}

\keyword{internal}
