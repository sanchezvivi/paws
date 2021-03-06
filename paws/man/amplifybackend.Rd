% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplifybackend_service.R
\name{amplifybackend}
\alias{amplifybackend}
\title{AmplifyBackend}
\usage{
amplifybackend(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
AWS Amplify Admin API
}
\section{Service syntax}{
\preformatted{svc <- amplifybackend(
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
\link[=amplifybackend_clone_backend]{clone_backend} \tab This operation clones an existing backend\cr
\link[=amplifybackend_create_backend]{create_backend} \tab This operation creates a backend for an Amplify app\cr
\link[=amplifybackend_create_backend_api]{create_backend_api} \tab Creates a new backend API resource\cr
\link[=amplifybackend_create_backend_auth]{create_backend_auth} \tab Creates a new backend authentication resource\cr
\link[=amplifybackend_create_backend_config]{create_backend_config} \tab Creates a config object for a backend\cr
\link[=amplifybackend_create_token]{create_token} \tab Generates a one-time challenge code to authenticate a user into your Amplify Admin UI\cr
\link[=amplifybackend_delete_backend]{delete_backend} \tab Removes an existing environment from your Amplify project\cr
\link[=amplifybackend_delete_backend_api]{delete_backend_api} \tab Deletes an existing backend API resource\cr
\link[=amplifybackend_delete_backend_auth]{delete_backend_auth} \tab Deletes an existing backend authentication resource\cr
\link[=amplifybackend_delete_token]{delete_token} \tab Deletes the challenge token based on the given appId and sessionId\cr
\link[=amplifybackend_generate_backend_api_models]{generate_backend_api_models} \tab Generates a model schema for an existing backend API resource\cr
\link[=amplifybackend_get_backend]{get_backend} \tab Provides project-level details for your Amplify UI project\cr
\link[=amplifybackend_get_backend_api]{get_backend_api} \tab Gets the details for a backend API\cr
\link[=amplifybackend_get_backend_api_models]{get_backend_api_models} \tab Generates a model schema for existing backend API resource\cr
\link[=amplifybackend_get_backend_auth]{get_backend_auth} \tab Gets backend auth details\cr
\link[=amplifybackend_get_backend_job]{get_backend_job} \tab Returns information about a specific job\cr
\link[=amplifybackend_get_token]{get_token} \tab Gets the challenge token based on the given appId and sessionId\cr
\link[=amplifybackend_list_backend_jobs]{list_backend_jobs} \tab Lists the jobs for the backend of an Amplify app\cr
\link[=amplifybackend_remove_all_backends]{remove_all_backends} \tab Removes all backend environments from your Amplify project\cr
\link[=amplifybackend_remove_backend_config]{remove_backend_config} \tab Removes the AWS resources that are required to access the Amplify Admin UI\cr
\link[=amplifybackend_update_backend_api]{update_backend_api} \tab Updates an existing backend API resource\cr
\link[=amplifybackend_update_backend_auth]{update_backend_auth} \tab Updates an existing backend authentication resource\cr
\link[=amplifybackend_update_backend_config]{update_backend_config} \tab Updates the AWS resources that are required to access the Amplify Admin UI\cr
\link[=amplifybackend_update_backend_job]{update_backend_job} \tab Updates a specific job
}
}

\examples{
\dontrun{
svc <- amplifybackend()
svc$clone_backend(
  Foo = 123
)
}

}
