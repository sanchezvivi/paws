% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/identitystore_operations.R
\name{identitystore_describe_group}
\alias{identitystore_describe_group}
\title{Retrieves the group metadata and attributes from GroupId in an identity
store}
\usage{
identitystore_describe_group(IdentityStoreId, GroupId)
}
\arguments{
\item{IdentityStoreId}{[required] The globally unique identifier for the identity store, such as
d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a
randomly generated string which contains number and lower case letters.
This value is generated at the time that a new identity store is
created.}

\item{GroupId}{[required] The identifier for a group in the identity store.}
}
\description{
Retrieves the group metadata and attributes from \code{GroupId} in an
identity store.
}
\section{Request syntax}{
\preformatted{svc$describe_group(
  IdentityStoreId = "string",
  GroupId = "string"
)
}
}

\keyword{internal}
