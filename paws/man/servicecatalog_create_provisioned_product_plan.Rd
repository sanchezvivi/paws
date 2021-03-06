% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicecatalog_operations.R
\name{servicecatalog_create_provisioned_product_plan}
\alias{servicecatalog_create_provisioned_product_plan}
\title{Creates a plan}
\usage{
servicecatalog_create_provisioned_product_plan(AcceptLanguage, PlanName,
  PlanType, NotificationArns, PathId, ProductId, ProvisionedProductName,
  ProvisioningArtifactId, ProvisioningParameters, IdempotencyToken, Tags)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{PlanName}{[required] The name of the plan.}

\item{PlanType}{[required] The plan type.}

\item{NotificationArns}{Passed to CloudFormation. The SNS topic ARNs to which to publish
stack-related events.}

\item{PathId}{The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use ListLaunchPaths.}

\item{ProductId}{[required] The product identifier.}

\item{ProvisionedProductName}{[required] A user-friendly name for the provisioned product. This value must be
unique for the AWS account and cannot be updated after the product is
provisioned.}

\item{ProvisioningArtifactId}{[required] The identifier of the provisioning artifact.}

\item{ProvisioningParameters}{Parameters specified by the administrator that are required for
provisioning the product.}

\item{IdempotencyToken}{[required] A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.}

\item{Tags}{One or more tags.

If the plan is for an existing provisioned product, the product must
have a \code{RESOURCE_UPDATE} constraint with
\code{TagUpdatesOnProvisionedProduct} set to \code{ALLOWED} to allow tag updates.}
}
\description{
Creates a plan. A plan includes the list of resources to be created
(when provisioning a new product) or modified (when updating a
provisioned product) when the plan is executed.

You can create one plan per provisioned product. To create a plan for an
existing provisioned product, the product status must be AVAILBLE or
TAINTED.

To view the resource changes in the change set, use
DescribeProvisionedProductPlan. To create or modify the provisioned
product, use ExecuteProvisionedProductPlan.
}
\section{Request syntax}{
\preformatted{svc$create_provisioned_product_plan(
  AcceptLanguage = "string",
  PlanName = "string",
  PlanType = "CLOUDFORMATION",
  NotificationArns = list(
    "string"
  ),
  PathId = "string",
  ProductId = "string",
  ProvisionedProductName = "string",
  ProvisioningArtifactId = "string",
  ProvisioningParameters = list(
    list(
      Key = "string",
      Value = "string",
      UsePreviousValue = TRUE|FALSE
    )
  ),
  IdempotencyToken = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
