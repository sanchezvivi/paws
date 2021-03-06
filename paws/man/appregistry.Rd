% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appregistry_service.R
\name{appregistry}
\alias{appregistry}
\title{AWS Service Catalog App Registry}
\usage{
appregistry(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
AWS Service Catalog AppRegistry enables organizations to understand the
application context of their AWS resources. AppRegistry provides a
repository of your applications, their resources, and the application
metadata that you use within your enterprise.
}
\section{Service syntax}{
\preformatted{svc <- appregistry(
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
\link[=appregistry_associate_attribute_group]{associate_attribute_group} \tab Associates an attribute group with an application to augment the application's metadata with the group's attributes\cr
\link[=appregistry_associate_resource]{associate_resource} \tab Associates a resource with an application\cr
\link[=appregistry_create_application]{create_application} \tab Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions\cr
\link[=appregistry_create_attribute_group]{create_attribute_group} \tab Creates a new attribute group as a container for user-defined attributes\cr
\link[=appregistry_delete_application]{delete_application} \tab Deletes an application that is specified either by its application ID or name\cr
\link[=appregistry_delete_attribute_group]{delete_attribute_group} \tab Deletes an attribute group, specified either by its attribute group ID or name\cr
\link[=appregistry_disassociate_attribute_group]{disassociate_attribute_group} \tab Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata\cr
\link[=appregistry_disassociate_resource]{disassociate_resource} \tab Disassociates a resource from application\cr
\link[=appregistry_get_application]{get_application} \tab Retrieves metadata information about one of your applications\cr
\link[=appregistry_get_attribute_group]{get_attribute_group} \tab Retrieves an attribute group, either by its name or its ID\cr
\link[=appregistry_list_applications]{list_applications} \tab Retrieves a list of all of your applications\cr
\link[=appregistry_list_associated_attribute_groups]{list_associated_attribute_groups} \tab Lists all attribute groups that are associated with specified application\cr
\link[=appregistry_list_associated_resources]{list_associated_resources} \tab Lists all resources that are associated with specified application\cr
\link[=appregistry_list_attribute_groups]{list_attribute_groups} \tab Lists all attribute groups which you have access to\cr
\link[=appregistry_list_tags_for_resource]{list_tags_for_resource} \tab Lists all of the tags on the resource\cr
\link[=appregistry_sync_resource]{sync_resource} \tab Syncs the resource with what is currently recorded in App registry\cr
\link[=appregistry_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified resource\cr
\link[=appregistry_untag_resource]{untag_resource} \tab Removes tags from a resource\cr
\link[=appregistry_update_application]{update_application} \tab Updates an existing application with new attributes\cr
\link[=appregistry_update_attribute_group]{update_attribute_group} \tab Updates an existing attribute group with new details
}
}

\examples{
\dontrun{
svc <- appregistry()
svc$associate_attribute_group(
  Foo = 123
)
}

}
