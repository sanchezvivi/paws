% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotdeviceadvisor_service.R
\name{iotdeviceadvisor}
\alias{iotdeviceadvisor}
\title{AWS IoT Core Device Advisor}
\usage{
iotdeviceadvisor(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
AWS IoT Core Device Advisor is a cloud-based, fully managed test
capability for validating IoT devices during device software
development. Device Advisor provides pre-built tests that you can use to
validate IoT devices for reliable and secure connectivity with AWS IoT
Core before deploying devices to production. By using Device Advisor,
you can confirm that your devices can connect to AWS IoT Core, follow
security best practices and, if applicable, receive software updates
from IoT Device Management. You can also download signed qualification
reports to submit to the AWS Partner Network to get your device
qualified for the AWS Partner Device Catalog without the need to send
your device in and wait for it to be tested.
}
\section{Service syntax}{
\preformatted{svc <- iotdeviceadvisor(
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
\link[=iotdeviceadvisor_create_suite_definition]{create_suite_definition} \tab Creates a Device Advisor test suite\cr
\link[=iotdeviceadvisor_delete_suite_definition]{delete_suite_definition} \tab Deletes a Device Advisor test suite\cr
\link[=iotdeviceadvisor_get_suite_definition]{get_suite_definition} \tab Gets information about a Device Advisor test suite\cr
\link[=iotdeviceadvisor_get_suite_run]{get_suite_run} \tab Gets information about a Device Advisor test suite run\cr
\link[=iotdeviceadvisor_get_suite_run_report]{get_suite_run_report} \tab Gets a report download link for a successful Device Advisor qualifying test suite run\cr
\link[=iotdeviceadvisor_list_suite_definitions]{list_suite_definitions} \tab Lists the Device Advisor test suites you have created\cr
\link[=iotdeviceadvisor_list_suite_runs]{list_suite_runs} \tab Lists the runs of the specified Device Advisor test suite\cr
\link[=iotdeviceadvisor_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags attached to an IoT Device Advisor resource\cr
\link[=iotdeviceadvisor_list_test_cases]{list_test_cases} \tab Lists all the test cases in the test suite\cr
\link[=iotdeviceadvisor_start_suite_run]{start_suite_run} \tab Starts a Device Advisor test suite run\cr
\link[=iotdeviceadvisor_tag_resource]{tag_resource} \tab Adds to and modifies existing tags of an IoT Device Advisor resource\cr
\link[=iotdeviceadvisor_untag_resource]{untag_resource} \tab Removes tags from an IoT Device Advisor resource\cr
\link[=iotdeviceadvisor_update_suite_definition]{update_suite_definition} \tab Updates a Device Advisor test suite
}
}

\examples{
\dontrun{
svc <- iotdeviceadvisor()
svc$create_suite_definition(
  Foo = 123
)
}

}
