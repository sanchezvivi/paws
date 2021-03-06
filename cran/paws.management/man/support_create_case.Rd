% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_operations.R
\name{support_create_case}
\alias{support_create_case}
\title{Creates a case in the AWS Support Center}
\usage{
support_create_case(subject, serviceCode, severityCode, categoryCode,
  communicationBody, ccEmailAddresses, language, issueType,
  attachmentSetId)
}
\arguments{
\item{subject}{[required] The title of the AWS Support case. The title appears in the \strong{Subject}
field on the AWS Support Center Create Case page.}

\item{serviceCode}{The code for the AWS service. You can use the DescribeServices operation
to get the possible \code{serviceCode} values.}

\item{severityCode}{A value that indicates the urgency of the case. This value determines
the response time according to your service level agreement with AWS
Support. You can use the DescribeSeverityLevels operation to get the
possible values for \code{severityCode}.

For more information, see SeverityLevel and \href{https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity}{Choosing a Severity}
in the \emph{AWS Support User Guide}.

The availability of severity levels depends on the support plan for the
AWS account.}

\item{categoryCode}{The category of problem for the AWS Support case. You also use the
DescribeServices operation to get the category code for a service. Each
AWS service defines its own set of category codes.}

\item{communicationBody}{[required] The communication body text that describes the issue. This text appears
in the \strong{Description} field on the AWS Support Center Create Case page.}

\item{ccEmailAddresses}{A list of email addresses that AWS Support copies on case
correspondence. AWS Support identifies the account that creates the case
when you specify your AWS credentials in an HTTP POST method or use the
\href{https://aws.amazon.com/tools/}{AWS SDKs}.}

\item{language}{The language in which AWS Support handles the case. You must specify the
ISO 639-1 code for the \code{language} parameter if you want support in that
language. Currently, English ("en") and Japanese ("ja") are supported.}

\item{issueType}{The type of issue for the case. You can specify \code{customer-service} or
\code{technical}. If you don't specify a value, the default is \code{technical}.}

\item{attachmentSetId}{The ID of a set of one or more attachments for the case. Create the set
by using the AddAttachmentsToSet operation.}
}
\description{
Creates a case in the AWS Support Center. This operation is similar to
how you create a case in the AWS Support Center Create Case page.

The AWS Support API doesn't support requesting service limit increases.
You can submit a service limit increase in the following ways:
\itemize{
\item Submit a request from the AWS Support Center Create Case page.
\item Use the Service Quotas
\href{https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html}{RequestServiceQuotaIncrease}
operation.
}

A successful \code{CreateCase} request returns an AWS Support case number.
You can use the DescribeCases operation and specify the case number to
get existing AWS Support cases. After you create a case, use the
AddCommunicationToCase operation to add additional communication or
attachments to an existing case.

The \code{caseId} is separate from the \code{displayId} that appears in the AWS
Support Center. Use the DescribeCases operation to get the \code{displayId}.
\itemize{
\item You must have a Business or Enterprise support plan to use the AWS
Support API.
\item If you call the AWS Support API from an account that does not have a
Business or Enterprise support plan, the
\code{SubscriptionRequiredException} error message appears. For
information about changing your support plan, see \href{https://aws.amazon.com/premiumsupport/}{AWS Support}.
}
}
\section{Request syntax}{
\preformatted{svc$create_case(
  subject = "string",
  serviceCode = "string",
  severityCode = "string",
  categoryCode = "string",
  communicationBody = "string",
  ccEmailAddresses = list(
    "string"
  ),
  language = "string",
  issueType = "string",
  attachmentSetId = "string"
)
}
}

\keyword{internal}
