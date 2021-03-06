% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssoadmin_operations.R
\name{ssoadmin_delete_inline_policy_from_permission_set}
\alias{ssoadmin_delete_inline_policy_from_permission_set}
\title{Deletes the inline policy from a specified permission set}
\usage{
ssoadmin_delete_inline_policy_from_permission_set(InstanceArn,
  PermissionSetArn)
}
\arguments{
\item{InstanceArn}{[required] The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the \emph{AWS General Reference}.}

\item{PermissionSetArn}{[required] The ARN of the permission set that will be used to remove access.}
}
\description{
Deletes the inline policy from a specified permission set.
}
\section{Request syntax}{
\preformatted{svc$delete_inline_policy_from_permission_set(
  InstanceArn = "string",
  PermissionSetArn = "string"
)
}
}

\keyword{internal}
