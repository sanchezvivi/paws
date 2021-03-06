% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secretsmanager_operations.R
\name{secretsmanager_get_resource_policy}
\alias{secretsmanager_get_resource_policy}
\title{Retrieves the JSON text of the resource-based policy document attached
to the specified secret}
\usage{
secretsmanager_get_resource_policy(SecretId)
}
\arguments{
\item{SecretId}{[required] Specifies the secret that you want to retrieve the attached
resource-based policy for. You can specify either the Amazon Resource
Name (ARN) or the friendly name of the secret.

If you specify an ARN, we generally recommend that you specify a
complete ARN. You can specify a partial ARN too—for example, if you
don’t include the final hyphen and six random characters that Secrets
Manager adds at the end of the ARN when you created the secret. A
partial ARN match can work as long as it uniquely matches only one
secret. However, if your secret has a name that ends in a hyphen
followed by six characters (before Secrets Manager adds the hyphen and
six characters to the ARN) and you try to use that as a partial ARN,
then those characters cause Secrets Manager to assume that you’re
specifying a complete ARN. This confusion can cause unexpected results.
To avoid this situation, we recommend that you don’t create secret names
ending with a hyphen followed by six characters.

If you specify an incomplete ARN without the random suffix, and instead
provide the 'friendly name', you \emph{must} not include the random suffix.
If you do include the random suffix added by Secrets Manager, you
receive either a \emph{ResourceNotFoundException} or an
\emph{AccessDeniedException} error, depending on your permissions.}
}
\description{
Retrieves the JSON text of the resource-based policy document attached
to the specified secret. The JSON request string input and response
output displays formatted code with white space and line breaks for
better readability. Submit your input as a single line JSON string.

\strong{Minimum permissions}

To run this command, you must have the following permissions:
\itemize{
\item secretsmanager:GetResourcePolicy
}

\strong{Related operations}
\itemize{
\item To attach a resource policy to a secret, use PutResourcePolicy.
\item To delete the resource-based policy attached to a secret, use
DeleteResourcePolicy.
\item To list all of the currently available secrets, use ListSecrets.
}
}
\section{Request syntax}{
\preformatted{svc$get_resource_policy(
  SecretId = "string"
)
}
}

\examples{
\dontrun{
# The following example shows how to retrieve the resource-based policy
# that is attached to a secret.
svc$get_resource_policy(
  SecretId = "MyTestDatabaseSecret"
)
}

}
\keyword{internal}
