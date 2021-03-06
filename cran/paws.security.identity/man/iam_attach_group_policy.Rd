% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_attach_group_policy}
\alias{iam_attach_group_policy}
\title{Attaches the specified managed policy to the specified IAM group}
\usage{
iam_attach_group_policy(GroupName, PolicyArn)
}
\arguments{
\item{GroupName}{[required] The name (friendly name, not ARN) of the group to attach the policy to.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: \\_+=,.@-}

\item{PolicyArn}{[required] The Amazon Resource Name (ARN) of the IAM policy you want to attach.

For more information about ARNs, see \href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html}{Amazon Resource Names (ARNs) and AWS Service Namespaces}
in the \emph{AWS General Reference}.}
}
\description{
Attaches the specified managed policy to the specified IAM group.

You use this API to attach a managed policy to a group. To embed an
inline policy in a group, use PutGroupPolicy.

For more information about policies, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html}{Managed Policies and Inline Policies}
in the \emph{IAM User Guide}.
}
\section{Request syntax}{
\preformatted{svc$attach_group_policy(
  GroupName = "string",
  PolicyArn = "string"
)
}
}

\examples{
\dontrun{
# The following command attaches the AWS managed policy named
# ReadOnlyAccess to the IAM group named Finance.
svc$attach_group_policy(
  GroupName = "Finance",
  PolicyArn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
)
}

}
\keyword{internal}
