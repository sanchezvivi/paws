% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemakerfeaturestoreruntime_service.R
\name{sagemakerfeaturestoreruntime}
\alias{sagemakerfeaturestoreruntime}
\title{Amazon SageMaker Feature Store Runtime}
\usage{
sagemakerfeaturestoreruntime(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
Contains all data plane API operations and data types for the Amazon
SageMaker Feature Store. Use this API to put, delete, and retrieve (get)
features from a feature store.

Use the following operations to configure your \code{OnlineStore} and
\code{OfflineStore} features, and to create and manage feature groups:
\itemize{
\item \href{https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html}{CreateFeatureGroup}
\item \href{https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html}{DeleteFeatureGroup}
\item \href{https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html}{DescribeFeatureGroup}
\item \href{https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html}{ListFeatureGroups}
}
}
\section{Service syntax}{
\preformatted{svc <- sagemakerfeaturestoreruntime(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=sagemakerfeaturestoreruntime_delete_record]{delete_record} \tab Deletes a Record from a FeatureGroup\cr
\link[=sagemakerfeaturestoreruntime_get_record]{get_record} \tab Use for OnlineStore serving from a FeatureStore\cr
\link[=sagemakerfeaturestoreruntime_put_record]{put_record} \tab Used for data ingestion into the FeatureStore
}
}

\examples{
\dontrun{
svc <- sagemakerfeaturestoreruntime()
svc$delete_record(
  Foo = 123
)
}

}
