% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appflow_operations.R
\name{appflow_describe_connector_entity}
\alias{appflow_describe_connector_entity}
\title{Provides details regarding the entity used with the connector, with a
description of the data model for each entity}
\usage{
appflow_describe_connector_entity(connectorEntityName, connectorType,
  connectorProfileName)
}
\arguments{
\item{connectorEntityName}{[required] The entity name for that connector.}

\item{connectorType}{The type of connector application, such as Salesforce, Amplitude, and so
on.}

\item{connectorProfileName}{The name of the connector profile. The name is unique for each
\code{ConnectorProfile} in the AWS account.}
}
\description{
Provides details regarding the entity used with the connector, with a
description of the data model for each entity.
}
\section{Request syntax}{
\preformatted{svc$describe_connector_entity(
  connectorEntityName = "string",
  connectorType = "Salesforce"|"Singular"|"Slack"|"Redshift"|"S3"|"Marketo"|"Googleanalytics"|"Zendesk"|"Servicenow"|"Datadog"|"Trendmicro"|"Snowflake"|"Dynatrace"|"Infornexus"|"Amplitude"|"Veeva"|"EventBridge"|"Upsolver",
  connectorProfileName = "string"
)
}
}

\keyword{internal}
