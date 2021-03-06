% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kms_operations.R
\name{kms_list_retirable_grants}
\alias{kms_list_retirable_grants}
\title{Returns all grants in which the specified principal is the
RetiringPrincipal in the grant}
\usage{
kms_list_retirable_grants(Limit, Marker, RetiringPrincipal)
}
\arguments{
\item{Limit}{Use this parameter to specify the maximum number of items to return.
When this value is present, AWS KMS does not return more than the
specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1 and
100, inclusive. If you do not include a value, it defaults to 50.}

\item{Marker}{Use this parameter in a subsequent request after you receive a response
with truncated results. Set it to the value of \code{NextMarker} from the
truncated response you just received.}

\item{RetiringPrincipal}{[required] The retiring principal for which to list grants. Enter a principal in
your AWS account.

To specify the retiring principal, use the \href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html}{Amazon Resource Name (ARN)}
of an AWS principal. Valid AWS principals include AWS accounts (root),
IAM users, federated users, and assumed role users. For examples of the
ARN syntax for specifying a principal, see \href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam}{AWS Identity and Access Management (IAM)}
in the Example ARNs section of the \emph{Amazon Web Services General
Reference}.}
}
\description{
Returns all grants in which the specified principal is the
\code{RetiringPrincipal} in the grant.

You can specify any principal in your AWS account. The grants that are
returned include grants for CMKs in your AWS account and other AWS
accounts.

You might use this operation to determine which grants you may retire.
To retire a grant, use the RetireGrant operation.

\strong{Cross-account use}: You must specify a principal in your AWS account.
However, this operation can return grants in any AWS account. You do not
need \code{kms:ListRetirableGrants} permission (or any other additional
permission) in any AWS account other than your own.

\strong{Required permissions}:
\href{https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html}{kms:ListRetirableGrants}
(IAM policy) in your AWS account.

\strong{Related operations:}
\itemize{
\item CreateGrant
\item ListGrants
\item RetireGrant
\item RevokeGrant
}
}
\section{Request syntax}{
\preformatted{svc$list_retirable_grants(
  Limit = 123,
  Marker = "string",
  RetiringPrincipal = "string"
)
}
}

\examples{
\dontrun{
# The following example lists the grants that the specified principal
# (identity) can retire.
svc$list_retirable_grants(
  RetiringPrincipal = "arn:aws:iam::111122223333:role/ExampleRole"
)
}

}
\keyword{internal}
