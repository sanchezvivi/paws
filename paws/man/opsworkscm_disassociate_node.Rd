% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworkscm_operations.R
\name{opsworkscm_disassociate_node}
\alias{opsworkscm_disassociate_node}
\title{Disassociates a node from an AWS OpsWorks CM server, and removes the
node from the server's managed nodes}
\usage{
opsworkscm_disassociate_node(ServerName, NodeName, EngineAttributes)
}
\arguments{
\item{ServerName}{[required] The name of the server from which to disassociate the node.}

\item{NodeName}{[required] The name of the client node.}

\item{EngineAttributes}{Engine attributes that are used for disassociating the node. No
attributes are required for Puppet.

\strong{Attributes required in a DisassociateNode request for Chef}
\itemize{
\item \code{CHEF_ORGANIZATION}: The Chef organization with which the node was
associated. By default only one organization named \code{default} can
exist.
}}
}
\description{
Disassociates a node from an AWS OpsWorks CM server, and removes the
node from the server's managed nodes. After a node is disassociated, the
node key pair is no longer valid for accessing the configuration
manager's API. For more information about how to associate a node, see
AssociateNode.

A node can can only be disassociated from a server that is in a
\code{HEALTHY} state. Otherwise, an \code{InvalidStateException} is thrown. A
\code{ResourceNotFoundException} is thrown when the server does not exist. A
\code{ValidationException} is raised when parameters of the request are not
valid.
}
\section{Request syntax}{
\preformatted{svc$disassociate_node(
  ServerName = "string",
  NodeName = "string",
  EngineAttributes = list(
    list(
      Name = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
