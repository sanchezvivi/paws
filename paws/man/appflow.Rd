% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appflow_service.R
\name{appflow}
\alias{appflow}
\title{Amazon Appflow}
\usage{
appflow(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
Welcome to the Amazon AppFlow API reference. This guide is for
developers who need detailed information about the Amazon AppFlow API
operations, data types, and errors.

Amazon AppFlow is a fully managed integration service that enables you
to securely transfer data between software as a service (SaaS)
applications like Salesforce, Marketo, Slack, and ServiceNow, and AWS
services like Amazon S3 and Amazon Redshift.

Use the following links to get started on the Amazon AppFlow API:
\itemize{
\item \href{https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html}{Actions}:
An alphabetical list of all Amazon AppFlow API operations.
\item \href{https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html}{Data types}:
An alphabetical list of all Amazon AppFlow data types.
\item \href{https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html}{Common parameters}:
Parameters that all Query operations can use.
\item \href{https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html}{Common errors}:
Client and server errors that all operations can return.
}

If you're new to Amazon AppFlow, we recommend that you review the
\href{https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html}{Amazon AppFlow User Guide}.

Amazon AppFlow API users can use vendor-specific mechanisms for OAuth,
and include applicable OAuth attributes (such as \code{auth-code} and
\code{redirecturi}) with the connector-specific \code{ConnectorProfileProperties}
when creating a new connector profile using Amazon AppFlow API
operations. For example, Salesforce users can refer to the \href{https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm}{\emph{Authorize Apps with OAuth}}
documentation.
}
\section{Service syntax}{
\preformatted{svc <- appflow(
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
\link[=appflow_create_connector_profile]{create_connector_profile} \tab Creates a new connector profile associated with your AWS account\cr
\link[=appflow_create_flow]{create_flow} \tab Enables your application to create a new flow using Amazon AppFlow\cr
\link[=appflow_delete_connector_profile]{delete_connector_profile} \tab Enables you to delete an existing connector profile\cr
\link[=appflow_delete_flow]{delete_flow} \tab Enables your application to delete an existing flow\cr
\link[=appflow_describe_connector_entity]{describe_connector_entity} \tab Provides details regarding the entity used with the connector, with a description of the data model for each entity\cr
\link[=appflow_describe_connector_profiles]{describe_connector_profiles} \tab Returns a list of connector-profile details matching the provided connector-profile names and connector-types\cr
\link[=appflow_describe_connectors]{describe_connectors} \tab Describes the connectors vended by Amazon AppFlow for specified connector types\cr
\link[=appflow_describe_flow]{describe_flow} \tab Provides a description of the specified flow\cr
\link[=appflow_describe_flow_execution_records]{describe_flow_execution_records} \tab Fetches the execution history of the flow\cr
\link[=appflow_list_connector_entities]{list_connector_entities} \tab Returns the list of available connector entities supported by Amazon AppFlow\cr
\link[=appflow_list_flows]{list_flows} \tab Lists all of the flows associated with your account\cr
\link[=appflow_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves the tags that are associated with a specified flow\cr
\link[=appflow_start_flow]{start_flow} \tab Activates an existing flow\cr
\link[=appflow_stop_flow]{stop_flow} \tab Deactivates the existing flow\cr
\link[=appflow_tag_resource]{tag_resource} \tab Applies a tag to the specified flow\cr
\link[=appflow_untag_resource]{untag_resource} \tab Removes a tag from the specified flow\cr
\link[=appflow_update_connector_profile]{update_connector_profile} \tab Updates a given connector profile associated with your account\cr
\link[=appflow_update_flow]{update_flow} \tab Updates an existing flow
}
}

\examples{
\dontrun{
svc <- appflow()
svc$create_connector_profile(
  Foo = 123
)
}

}
