% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataexchange_service.R
\name{dataexchange}
\alias{dataexchange}
\title{AWS Data Exchange}
\usage{
dataexchange(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
AWS Data Exchange is a service that makes it easy for AWS customers to
exchange data in the cloud. You can use the AWS Data Exchange APIs to
create, update, manage, and access file-based data set in the AWS Cloud.

As a subscriber, you can view and access the data sets that you have an
entitlement to through a subscription. You can use the APIS to download
or copy your entitled data sets to Amazon S3 for use across a variety of
AWS analytics and machine learning services.

As a provider, you can create and manage your data sets that you would
like to publish to a product. Being able to package and provide your
data sets into products requires a few steps to determine eligibility.
For more information, visit the AWS Data Exchange User Guide.

A data set is a collection of data that can be changed or updated over
time. Data sets can be updated using revisions, which represent a new
version or incremental change to a data set. A revision contains one or
more assets. An asset in AWS Data Exchange is a piece of data that can
be stored as an Amazon S3 object. The asset can be a structured data
file, an image file, or some other data file. Jobs are asynchronous
import or export operations used to create or copy assets.
}
\section{Service syntax}{
\preformatted{svc <- dataexchange(
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
\link[=dataexchange_cancel_job]{cancel_job} \tab This operation cancels a job\cr
\link[=dataexchange_create_data_set]{create_data_set} \tab This operation creates a data set\cr
\link[=dataexchange_create_job]{create_job} \tab This operation creates a job\cr
\link[=dataexchange_create_revision]{create_revision} \tab This operation creates a revision for a data set\cr
\link[=dataexchange_delete_asset]{delete_asset} \tab This operation deletes an asset\cr
\link[=dataexchange_delete_data_set]{delete_data_set} \tab This operation deletes a data set\cr
\link[=dataexchange_delete_revision]{delete_revision} \tab This operation deletes a revision\cr
\link[=dataexchange_get_asset]{get_asset} \tab This operation returns information about an asset\cr
\link[=dataexchange_get_data_set]{get_data_set} \tab This operation returns information about a data set\cr
\link[=dataexchange_get_job]{get_job} \tab This operation returns information about a job\cr
\link[=dataexchange_get_revision]{get_revision} \tab This operation returns information about a revision\cr
\link[=dataexchange_list_data_set_revisions]{list_data_set_revisions} \tab This operation lists a data set's revisions sorted by CreatedAt in descending order\cr
\link[=dataexchange_list_data_sets]{list_data_sets} \tab This operation lists your data sets\cr
\link[=dataexchange_list_jobs]{list_jobs} \tab This operation lists your jobs sorted by CreatedAt in descending order\cr
\link[=dataexchange_list_revision_assets]{list_revision_assets} \tab This operation lists a revision's assets sorted alphabetically in descending order\cr
\link[=dataexchange_list_tags_for_resource]{list_tags_for_resource} \tab This operation lists the tags on the resource\cr
\link[=dataexchange_start_job]{start_job} \tab This operation starts a job\cr
\link[=dataexchange_tag_resource]{tag_resource} \tab This operation tags a resource\cr
\link[=dataexchange_untag_resource]{untag_resource} \tab This operation removes one or more tags from a resource\cr
\link[=dataexchange_update_asset]{update_asset} \tab This operation updates an asset\cr
\link[=dataexchange_update_data_set]{update_data_set} \tab This operation updates a data set\cr
\link[=dataexchange_update_revision]{update_revision} \tab This operation updates a revision
}
}

\examples{
\dontrun{
svc <- dataexchange()
svc$cancel_job(
  Foo = 123
)
}

}
