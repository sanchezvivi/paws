% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/identitystore_service.R
\name{identitystore}
\alias{identitystore}
\title{AWS SSO Identity Store}
\usage{
identitystore(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
AWS SSO Identity Store
}
\section{Service syntax}{
\preformatted{svc <- identitystore(
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
\link[=identitystore_describe_group]{describe_group} \tab Retrieves the group metadata and attributes from GroupId in an identity store\cr
\link[=identitystore_describe_user]{describe_user} \tab Retrieves the user metadata and attributes from UserId in an identity store\cr
\link[=identitystore_list_groups]{list_groups} \tab Lists the attribute name and value of the group that you specified in the search\cr
\link[=identitystore_list_users]{list_users} \tab Lists the attribute name and value of the user that you specified in the search
}
}

\examples{
\dontrun{
svc <- identitystore()
svc$describe_group(
  Foo = 123
)
}

}
