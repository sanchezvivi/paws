% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_user_profile}
\alias{sagemaker_create_user_profile}
\title{Creates a user profile}
\usage{
sagemaker_create_user_profile(DomainId, UserProfileName,
  SingleSignOnUserIdentifier, SingleSignOnUserValue, Tags, UserSettings)
}
\arguments{
\item{DomainId}{[required] The ID of the associated Domain.}

\item{UserProfileName}{[required] A name for the UserProfile.}

\item{SingleSignOnUserIdentifier}{A specifier for the type of value specified in SingleSignOnUserValue.
Currently, the only supported value is "UserName". If the Domain's
AuthMode is SSO, this field is required. If the Domain's AuthMode is not
SSO, this field cannot be specified.}

\item{SingleSignOnUserValue}{The username of the associated AWS Single Sign-On User for this
UserProfile. If the Domain's AuthMode is SSO, this field is required,
and must match a valid username of a user in your directory. If the
Domain's AuthMode is not SSO, this field cannot be specified.}

\item{Tags}{Each tag consists of a key and an optional value. Tag keys must be
unique per resource.}

\item{UserSettings}{A collection of settings.}
}
\description{
Creates a user profile. A user profile represents a single user within a
domain, and is the main way to reference a "person" for the purposes of
sharing, reporting, and other user-oriented features. This entity is
created when a user onboards to Amazon SageMaker Studio. If an
administrator invites a person by email or imports them from SSO, a user
profile is automatically created. A user profile is the primary holder
of settings for an individual user and has a reference to the user's
private Amazon Elastic File System (EFS) home directory.
}
\section{Request syntax}{
\preformatted{svc$create_user_profile(
  DomainId = "string",
  UserProfileName = "string",
  SingleSignOnUserIdentifier = "string",
  SingleSignOnUserValue = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  UserSettings = list(
    ExecutionRole = "string",
    SecurityGroups = list(
      "string"
    ),
    SharingSettings = list(
      NotebookOutputOption = "Allowed"|"Disabled",
      S3OutputPath = "string",
      S3KmsKeyId = "string"
    ),
    JupyterServerAppSettings = list(
      DefaultResourceSpec = list(
        SageMakerImageArn = "string",
        SageMakerImageVersionArn = "string",
        InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
      )
    ),
    KernelGatewayAppSettings = list(
      DefaultResourceSpec = list(
        SageMakerImageArn = "string",
        SageMakerImageVersionArn = "string",
        InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
      ),
      CustomImages = list(
        list(
          ImageName = "string",
          ImageVersionNumber = 123,
          AppImageConfigName = "string"
        )
      )
    ),
    TensorBoardAppSettings = list(
      DefaultResourceSpec = list(
        SageMakerImageArn = "string",
        SageMakerImageVersionArn = "string",
        InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
      )
    )
  )
)
}
}

\keyword{internal}
