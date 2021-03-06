% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_update_analysis_permissions}
\alias{quicksight_update_analysis_permissions}
\title{Updates the read and write permissions for an analysis}
\usage{
quicksight_update_analysis_permissions(AwsAccountId, AnalysisId,
  GrantPermissions, RevokePermissions)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the AWS account that contains the analysis whose permissions
you're updating. You must be using the AWS account that the analysis is
in.}

\item{AnalysisId}{[required] The ID of the analysis whose permissions you're updating. The ID is part
of the analysis URL.}

\item{GrantPermissions}{A structure that describes the permissions to add and the principal to
add them to.}

\item{RevokePermissions}{A structure that describes the permissions to remove and the principal
to remove them from.}
}
\description{
Updates the read and write permissions for an analysis.
}
\section{Request syntax}{
\preformatted{svc$update_analysis_permissions(
  AwsAccountId = "string",
  AnalysisId = "string",
  GrantPermissions = list(
    list(
      Principal = "string",
      Actions = list(
        "string"
      )
    )
  ),
  RevokePermissions = list(
    list(
      Principal = "string",
      Actions = list(
        "string"
      )
    )
  )
)
}
}

\keyword{internal}
