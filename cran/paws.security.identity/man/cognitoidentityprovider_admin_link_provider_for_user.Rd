% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_admin_link_provider_for_user}
\alias{cognitoidentityprovider_admin_link_provider_for_user}
\title{Links an existing user account in a user pool (DestinationUser) to an
identity from an external identity provider (SourceUser) based on a
specified attribute name and value from the external identity provider}
\usage{
cognitoidentityprovider_admin_link_provider_for_user(UserPoolId,
  DestinationUser, SourceUser)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID for the user pool.}

\item{DestinationUser}{[required] The existing user in the user pool to be linked to the external identity
provider user account. Can be a native (Username + Password) Cognito
User Pools user or a federated user (for example, a SAML or Facebook
user). If the user doesn't exist, an exception is thrown. This is the
user that is returned when the new user (with the linked identity
provider attribute) signs in.

For a native username + password user, the \code{ProviderAttributeValue} for
the \code{DestinationUser} should be the username in the user pool. For a
federated user, it should be the provider-specific \code{user_id}.

The \code{ProviderAttributeName} of the \code{DestinationUser} is ignored.

The \code{ProviderName} should be set to \code{Cognito} for users in Cognito user
pools.}

\item{SourceUser}{[required] An external identity provider account for a user who does not currently
exist yet in the user pool. This user must be a federated user (for
example, a SAML or Facebook user), not another native user.

If the \code{SourceUser} is a federated social identity provider user
(Facebook, Google, or Login with Amazon), you must set the
\code{ProviderAttributeName} to \code{Cognito_Subject}. For social identity
providers, the \code{ProviderName} will be \code{Facebook}, \code{Google}, or
\code{LoginWithAmazon}, and Cognito will automatically parse the Facebook,
Google, and Login with Amazon tokens for \code{id}, \code{sub}, and \code{user_id},
respectively. The \code{ProviderAttributeValue} for the user must be the same
value as the \code{id}, \code{sub}, or \code{user_id} value found in the social
identity provider token.

For SAML, the \code{ProviderAttributeName} can be any value that matches a
claim in the SAML assertion. If you wish to link SAML users based on the
subject of the SAML assertion, you should map the subject to a claim
through the SAML identity provider and submit that claim name as the
\code{ProviderAttributeName}. If you set \code{ProviderAttributeName} to
\code{Cognito_Subject}, Cognito will automatically parse the default unique
identifier found in the subject from the SAML token.}
}
\description{
Links an existing user account in a user pool (\code{DestinationUser}) to an
identity from an external identity provider (\code{SourceUser}) based on a
specified attribute name and value from the external identity provider.
This allows you to create a link from the existing user account to an
external federated user identity that has not yet been used to sign in,
so that the federated user identity can be used to sign in as the
existing user account.

For example, if there is an existing user with a username and password,
this API links that user to a federated user identity, so that when the
federated user identity is used, the user signs in as the existing user
account.

The maximum number of federated identities linked to a user is 5.

Because this API allows a user with an external federated identity to
sign in as an existing user in the user pool, it is critical that it
only be used with external identity providers and provider attributes
that have been trusted by the application owner.

This action is enabled only for admin access and requires developer
credentials.
}
\section{Request syntax}{
\preformatted{svc$admin_link_provider_for_user(
  UserPoolId = "string",
  DestinationUser = list(
    ProviderName = "string",
    ProviderAttributeName = "string",
    ProviderAttributeValue = "string"
  ),
  SourceUser = list(
    ProviderName = "string",
    ProviderAttributeName = "string",
    ProviderAttributeValue = "string"
  )
)
}
}

\keyword{internal}
