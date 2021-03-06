% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_list_audit_findings}
\alias{iot_list_audit_findings}
\title{Lists the findings (results) of a Device Defender audit or of the audits
performed during a specified time period}
\usage{
iot_list_audit_findings(taskId, checkName, resourceIdentifier,
  maxResults, nextToken, startTime, endTime, listSuppressedFindings)
}
\arguments{
\item{taskId}{A filter to limit results to the audit with the specified ID. You must
specify either the taskId or the startTime and endTime, but not both.}

\item{checkName}{A filter to limit results to the findings for the specified audit check.}

\item{resourceIdentifier}{Information identifying the noncompliant resource.}

\item{maxResults}{The maximum number of results to return at one time. The default is 25.}

\item{nextToken}{The token for the next set of results.}

\item{startTime}{A filter to limit results to those found after the specified time. You
must specify either the startTime and endTime or the taskId, but not
both.}

\item{endTime}{A filter to limit results to those found before the specified time. You
must specify either the startTime and endTime or the taskId, but not
both.}

\item{listSuppressedFindings}{Boolean flag indicating whether only the suppressed findings or the
unsuppressed findings should be listed. If this parameter isn't
provided, the response will list both suppressed and unsuppressed
findings.}
}
\description{
Lists the findings (results) of a Device Defender audit or of the audits
performed during a specified time period. (Findings are retained for 90
days.)
}
\section{Request syntax}{
\preformatted{svc$list_audit_findings(
  taskId = "string",
  checkName = "string",
  resourceIdentifier = list(
    deviceCertificateId = "string",
    caCertificateId = "string",
    cognitoIdentityPoolId = "string",
    clientId = "string",
    policyVersionIdentifier = list(
      policyName = "string",
      policyVersionId = "string"
    ),
    account = "string",
    iamRoleArn = "string",
    roleAliasArn = "string"
  ),
  maxResults = 123,
  nextToken = "string",
  startTime = as.POSIXct(
    "2015-01-01"
  ),
  endTime = as.POSIXct(
    "2015-01-01"
  ),
  listSuppressedFindings = TRUE|FALSE
)
}
}

\keyword{internal}
