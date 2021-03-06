% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_data_quality_job_definition}
\alias{sagemaker_create_data_quality_job_definition}
\title{Creates a definition for a job that monitors data quality and drift}
\usage{
sagemaker_create_data_quality_job_definition(JobDefinitionName,
  DataQualityBaselineConfig, DataQualityAppSpecification,
  DataQualityJobInput, DataQualityJobOutputConfig, JobResources,
  NetworkConfig, RoleArn, StoppingCondition, Tags)
}
\arguments{
\item{JobDefinitionName}{[required] The name for the monitoring job definition.}

\item{DataQualityBaselineConfig}{Configures the constraints and baselines for the monitoring job.}

\item{DataQualityAppSpecification}{[required] Specifies the container that runs the monitoring job.}

\item{DataQualityJobInput}{[required] A list of inputs for the monitoring job. Currently endpoints are
supported as monitoring inputs.}

\item{DataQualityJobOutputConfig}{[required]}

\item{JobResources}{[required]}

\item{NetworkConfig}{Specifies networking configuration for the monitoring job.}

\item{RoleArn}{[required] The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
assume to perform tasks on your behalf.}

\item{StoppingCondition}{}

\item{Tags}{(Optional) An array of key-value pairs. For more information, see \href{https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL}{Using Cost Allocation Tags}
in the \emph{AWS Billing and Cost Management User Guide}.}
}
\description{
Creates a definition for a job that monitors data quality and drift. For
information about model monitor, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html}{Amazon SageMaker Model Monitor}.
}
\section{Request syntax}{
\preformatted{svc$create_data_quality_job_definition(
  JobDefinitionName = "string",
  DataQualityBaselineConfig = list(
    BaseliningJobName = "string",
    ConstraintsResource = list(
      S3Uri = "string"
    ),
    StatisticsResource = list(
      S3Uri = "string"
    )
  ),
  DataQualityAppSpecification = list(
    ImageUri = "string",
    ContainerEntrypoint = list(
      "string"
    ),
    ContainerArguments = list(
      "string"
    ),
    RecordPreprocessorSourceUri = "string",
    PostAnalyticsProcessorSourceUri = "string",
    Environment = list(
      "string"
    )
  ),
  DataQualityJobInput = list(
    EndpointInput = list(
      EndpointName = "string",
      LocalPath = "string",
      S3InputMode = "Pipe"|"File",
      S3DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
      FeaturesAttribute = "string",
      InferenceAttribute = "string",
      ProbabilityAttribute = "string",
      ProbabilityThresholdAttribute = 123.0,
      StartTimeOffset = "string",
      EndTimeOffset = "string"
    )
  ),
  DataQualityJobOutputConfig = list(
    MonitoringOutputs = list(
      list(
        S3Output = list(
          S3Uri = "string",
          LocalPath = "string",
          S3UploadMode = "Continuous"|"EndOfJob"
        )
      )
    ),
    KmsKeyId = "string"
  ),
  JobResources = list(
    ClusterConfig = list(
      InstanceCount = 123,
      InstanceType = "ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge",
      VolumeSizeInGB = 123,
      VolumeKmsKeyId = "string"
    )
  ),
  NetworkConfig = list(
    EnableInterContainerTrafficEncryption = TRUE|FALSE,
    EnableNetworkIsolation = TRUE|FALSE,
    VpcConfig = list(
      SecurityGroupIds = list(
        "string"
      ),
      Subnets = list(
        "string"
      )
    )
  ),
  RoleArn = "string",
  StoppingCondition = list(
    MaxRuntimeInSeconds = 123
  ),
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
