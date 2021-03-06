% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_create_instance_snapshot}
\alias{lightsail_create_instance_snapshot}
\title{Creates a snapshot of a specific virtual private server, or instance}
\usage{
lightsail_create_instance_snapshot(instanceSnapshotName, instanceName,
  tags)
}
\arguments{
\item{instanceSnapshotName}{[required] The name for your new snapshot.}

\item{instanceName}{[required] The Lightsail instance on which to base your snapshot.}

\item{tags}{The tag keys and optional values to add to the resource during create.

Use the \code{TagResource} action to tag a resource after it's created.}
}
\description{
Creates a snapshot of a specific virtual private server, or \emph{instance}.
You can use a snapshot to create a new instance that is based on that
snapshot.

The \verb{create instance snapshot} operation supports tag-based access
control via request tags. For more information, see the Lightsail Dev
Guide.
}
\section{Request syntax}{
\preformatted{svc$create_instance_snapshot(
  instanceSnapshotName = "string",
  instanceName = "string",
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

\keyword{internal}
