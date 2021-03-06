% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lookoutforvision_service.R
\name{lookoutforvision}
\alias{lookoutforvision}
\title{Amazon Lookout for Vision}
\usage{
lookoutforvision(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
This is the Amazon Lookout for Vision API Reference. It provides
descriptions of actions, data types, common parameters, and common
errors.

Amazon Lookout for Vision enables you to find visual defects in
industrial products, accurately and at scale. It uses computer vision to
identify missing components in an industrial product, damage to vehicles
or structures, irregularities in production lines, and even minuscule
defects in silicon wafers — or any other physical item where quality is
important such as a missing capacitor on printed circuit boards.
}
\section{Service syntax}{
\preformatted{svc <- lookoutforvision(
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
\link[=lookoutforvision_create_dataset]{create_dataset} \tab Creates a new dataset in an Amazon Lookout for Vision project\cr
\link[=lookoutforvision_create_model]{create_model} \tab Creates a new version of a model within an an Amazon Lookout for Vision project\cr
\link[=lookoutforvision_create_project]{create_project} \tab Creates an empty Amazon Lookout for Vision project\cr
\link[=lookoutforvision_delete_dataset]{delete_dataset} \tab Deletes an existing Amazon Lookout for Vision dataset\cr
\link[=lookoutforvision_delete_model]{delete_model} \tab Deletes an Amazon Lookout for Vision model\cr
\link[=lookoutforvision_delete_project]{delete_project} \tab Deletes an Amazon Lookout for Vision project\cr
\link[=lookoutforvision_describe_dataset]{describe_dataset} \tab Describe an Amazon Lookout for Vision dataset\cr
\link[=lookoutforvision_describe_model]{describe_model} \tab Describes a version of an Amazon Lookout for Vision model\cr
\link[=lookoutforvision_describe_project]{describe_project} \tab Describes an Amazon Lookout for Vision project\cr
\link[=lookoutforvision_detect_anomalies]{detect_anomalies} \tab Detects anomalies in an image that you supply\cr
\link[=lookoutforvision_list_dataset_entries]{list_dataset_entries} \tab Lists the JSON Lines within a dataset\cr
\link[=lookoutforvision_list_models]{list_models} \tab Lists the versions of a model in an Amazon Lookout for Vision project\cr
\link[=lookoutforvision_list_projects]{list_projects} \tab Lists the Amazon Lookout for Vision projects in your AWS account\cr
\link[=lookoutforvision_start_model]{start_model} \tab Starts the running of the version of an Amazon Lookout for Vision model\cr
\link[=lookoutforvision_stop_model]{stop_model} \tab Stops a running model\cr
\link[=lookoutforvision_update_dataset_entries]{update_dataset_entries} \tab Adds one or more JSON Line entries to a dataset
}
}

\examples{
\dontrun{
svc <- lookoutforvision()
svc$create_dataset(
  Foo = 123
)
}

}
