% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssoadmin_operations.R
\name{ssoadmin_attach_managed_policy_to_permission_set}
\alias{ssoadmin_attach_managed_policy_to_permission_set}
\title{Attaches an IAM managed policy ARN to a permission set}
\usage{
ssoadmin_attach_managed_policy_to_permission_set(InstanceArn,
  PermissionSetArn, ManagedPolicyArn)
}
\arguments{
\item{InstanceArn}{[required] The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the \emph{AWS General Reference}.}

\item{PermissionSetArn}{[required] The ARN of the PermissionSet that the managed policy should be attached
to.}

\item{ManagedPolicyArn}{[required] The IAM managed policy ARN to be attached to a permission set.}
}
\description{
Attaches an IAM managed policy ARN to a permission set.

If the permission set is already referenced by one or more account
assignments, you will need to call \verb{<a>ProvisionPermissionSet</a>}
after this action to apply the corresponding IAM policy updates to all
assigned accounts.
}
\section{Request syntax}{
\preformatted{svc$attach_managed_policy_to_permission_set(
  InstanceArn = "string",
  PermissionSetArn = "string",
  ManagedPolicyArn = "string"
)
}
}

\keyword{internal}
