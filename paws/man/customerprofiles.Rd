% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/customerprofiles_service.R
\name{customerprofiles}
\alias{customerprofiles}
\title{Amazon Connect Customer Profiles}
\usage{
customerprofiles(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
Welcome to the Amazon Connect Customer Profiles API Reference. This
guide provides information about the Amazon Connect Customer Profiles
API, including supported operations, data types, parameters, and
schemas.

Amazon Connect Customer Profiles is a unified customer profile for your
contact center that has pre-built connectors powered by AppFlow that
make it easy to combine customer information from third party
applications, such as Salesforce (CRM), ServiceNow (ITSM), and your
enterprise resource planning (ERP), with contact history from your
Amazon Connect contact center.

If you're new to Amazon Connect, you might find it helpful to also
review the \href{https://docs.aws.amazon.com/connect/latest/adminguide/what-is-amazon-connect.html}{Amazon Connect Administrator Guide}.
}
\section{Service syntax}{
\preformatted{svc <- customerprofiles(
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
\link[=customerprofiles_add_profile_key]{add_profile_key} \tab Associates a new key value with a specific profile, such as a Contact Trace Record (CTR) ContactId\cr
\link[=customerprofiles_create_domain]{create_domain} \tab Creates a domain, which is a container for all customer data, such as customer profile attributes, object types, profile keys, and encryption keys\cr
\link[=customerprofiles_create_profile]{create_profile} \tab Creates a standard profile\cr
\link[=customerprofiles_delete_domain]{delete_domain} \tab Deletes a specific domain and all of its customer data, such as customer profile attributes and their related objects\cr
\link[=customerprofiles_delete_integration]{delete_integration} \tab Removes an integration from a specific domain\cr
\link[=customerprofiles_delete_profile]{delete_profile} \tab Deletes the standard customer profile and all data pertaining to the profile\cr
\link[=customerprofiles_delete_profile_key]{delete_profile_key} \tab Removes a searchable key from a customer profile\cr
\link[=customerprofiles_delete_profile_object]{delete_profile_object} \tab Removes an object associated with a profile of a given ProfileObjectType\cr
\link[=customerprofiles_delete_profile_object_type]{delete_profile_object_type} \tab Removes a ProfileObjectType from a specific domain as well as removes all the ProfileObjects of that type\cr
\link[=customerprofiles_get_domain]{get_domain} \tab Returns information about a specific domain\cr
\link[=customerprofiles_get_integration]{get_integration} \tab Returns an integration for a domain\cr
\link[=customerprofiles_get_profile_object_type]{get_profile_object_type} \tab Returns the object types for a specific domain\cr
\link[=customerprofiles_get_profile_object_type_template]{get_profile_object_type_template} \tab Returns the template information for a specific object type\cr
\link[=customerprofiles_list_account_integrations]{list_account_integrations} \tab Lists all of the integrations associated to a specific URI in the AWS account\cr
\link[=customerprofiles_list_domains]{list_domains} \tab Returns a list of all the domains for an AWS account that have been created\cr
\link[=customerprofiles_list_integrations]{list_integrations} \tab Lists all of the integrations in your domain\cr
\link[=customerprofiles_list_profile_objects]{list_profile_objects} \tab Returns a list of objects associated with a profile of a given ProfileObjectType\cr
\link[=customerprofiles_list_profile_object_types]{list_profile_object_types} \tab Lists all of the templates available within the service\cr
\link[=customerprofiles_list_profile_object_type_templates]{list_profile_object_type_templates} \tab Lists all of the template information for object types\cr
\link[=customerprofiles_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with an Amazon Connect Customer Profiles resource\cr
\link[=customerprofiles_put_integration]{put_integration} \tab Adds an integration between the service and a third-party service, which includes Amazon AppFlow and Amazon Connect\cr
\link[=customerprofiles_put_profile_object]{put_profile_object} \tab Adds additional objects to customer profiles of a given ObjectType\cr
\link[=customerprofiles_put_profile_object_type]{put_profile_object_type} \tab Defines a ProfileObjectType\cr
\link[=customerprofiles_search_profiles]{search_profiles} \tab Searches for profiles within a specific domain name using name, phone number, email address, account number, or a custom defined index\cr
\link[=customerprofiles_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified Amazon Connect Customer Profiles resource\cr
\link[=customerprofiles_untag_resource]{untag_resource} \tab Removes one or more tags from the specified Amazon Connect Customer Profiles resource\cr
\link[=customerprofiles_update_domain]{update_domain} \tab Updates the properties of a domain, including creating or selecting a dead letter queue or an encryption key\cr
\link[=customerprofiles_update_profile]{update_profile} \tab Updates the properties of a profile
}
}

\examples{
\dontrun{
svc <- customerprofiles()
svc$add_profile_key(
  Foo = 123
)
}

}
