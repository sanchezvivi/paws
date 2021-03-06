% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auditmanager_operations.R
\name{auditmanager_update_settings}
\alias{auditmanager_update_settings}
\title{Updates AWS Audit Manager settings for the current user account}
\usage{
auditmanager_update_settings(snsTopic,
  defaultAssessmentReportsDestination, defaultProcessOwners, kmsKey)
}
\arguments{
\item{snsTopic}{The Amazon Simple Notification Service (Amazon SNS) topic to which AWS
Audit Manager sends notifications.}

\item{defaultAssessmentReportsDestination}{The default storage destination for assessment reports.}

\item{defaultProcessOwners}{A list of the default audit owners.}

\item{kmsKey}{The AWS KMS key details.}
}
\description{
Updates AWS Audit Manager settings for the current user account.
}
\section{Request syntax}{
\preformatted{svc$update_settings(
  snsTopic = "string",
  defaultAssessmentReportsDestination = list(
    destinationType = "S3",
    destination = "string"
  ),
  defaultProcessOwners = list(
    list(
      roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
      roleArn = "string"
    )
  ),
  kmsKey = "string"
)
}
}

\keyword{internal}
