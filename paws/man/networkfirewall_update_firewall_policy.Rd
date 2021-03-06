% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkfirewall_operations.R
\name{networkfirewall_update_firewall_policy}
\alias{networkfirewall_update_firewall_policy}
\title{Updates the properties of the specified firewall policy}
\usage{
networkfirewall_update_firewall_policy(UpdateToken, FirewallPolicyArn,
  FirewallPolicyName, FirewallPolicy, Description, DryRun)
}
\arguments{
\item{UpdateToken}{[required] A token used for optimistic locking. Network Firewall returns a token to
your requests that access the firewall policy. The token marks the state
of the policy resource at the time of the request.

To make changes to the policy, you provide the token in your request.
Network Firewall uses the token to ensure that the policy hasn't changed
since you last retrieved it. If it has changed, the operation fails with
an \code{InvalidTokenException}. If this happens, retrieve the firewall
policy again to get a current copy of it with current token. Reapply
your changes as needed, then try the operation again using the new
token.}

\item{FirewallPolicyArn}{The Amazon Resource Name (ARN) of the firewall policy.

You must specify the ARN or the name, and you can specify both.}

\item{FirewallPolicyName}{The descriptive name of the firewall policy. You can't change the name
of a firewall policy after you create it.

You must specify the ARN or the name, and you can specify both.}

\item{FirewallPolicy}{[required] The updated firewall policy to use for the firewall.}

\item{Description}{A description of the firewall policy.}

\item{DryRun}{Indicates whether you want Network Firewall to just check the validity
of the request, rather than run the request.

If set to \code{TRUE}, Network Firewall checks whether the request can run
successfully, but doesn't actually make the requested changes. The call
returns the value that the request would return if you ran it with dry
run set to \code{FALSE}, but doesn't make additions or changes to your
resources. This option allows you to make sure that you have the
required permissions to run the request and that your request parameters
are valid.

If set to \code{FALSE}, Network Firewall makes the requested changes to your
resources.}
}
\description{
Updates the properties of the specified firewall policy.
}
\section{Request syntax}{
\preformatted{svc$update_firewall_policy(
  UpdateToken = "string",
  FirewallPolicyArn = "string",
  FirewallPolicyName = "string",
  FirewallPolicy = list(
    StatelessRuleGroupReferences = list(
      list(
        ResourceArn = "string",
        Priority = 123
      )
    ),
    StatelessDefaultActions = list(
      "string"
    ),
    StatelessFragmentDefaultActions = list(
      "string"
    ),
    StatelessCustomActions = list(
      list(
        ActionName = "string",
        ActionDefinition = list(
          PublishMetricAction = list(
            Dimensions = list(
              list(
                Value = "string"
              )
            )
          )
        )
      )
    ),
    StatefulRuleGroupReferences = list(
      list(
        ResourceArn = "string"
      )
    )
  ),
  Description = "string",
  DryRun = TRUE|FALSE
)
}
}

\keyword{internal}
