% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_get_user_policy}
\alias{iam_get_user_policy}
\title{Retrieves the specified inline policy document that is embedded in the
specified IAM user}
\usage{
iam_get_user_policy(UserName, PolicyName)
}
\arguments{
\item{UserName}{[required] The name of the user who the policy is associated with.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: \\_+=,.@-}

\item{PolicyName}{[required] The name of the policy document to get.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: \\_+=,.@-}
}
\description{
Retrieves the specified inline policy document that is embedded in the
specified IAM user.

Policies returned by this API are URL-encoded compliant with \href{https://tools.ietf.org/html/rfc3986}{RFC 3986}. You can use a URL decoding
method to convert the policy back to plain JSON text. For example, if
you use Java, you can use the \code{decode} method of the
\code{java.net.URLDecoder} utility class in the Java SDK. Other languages and
SDKs provide similar functionality.

An IAM user can also have managed policies attached to it. To retrieve a
managed policy document that is attached to a user, use GetPolicy to
determine the policy's default version. Then use GetPolicyVersion to
retrieve the policy document.

For more information about policies, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html}{Managed Policies and Inline Policies}
in the \emph{IAM User Guide}.
}
\section{Request syntax}{
\preformatted{svc$get_user_policy(
  UserName = "string",
  PolicyName = "string"
)
}
}

\keyword{internal}
