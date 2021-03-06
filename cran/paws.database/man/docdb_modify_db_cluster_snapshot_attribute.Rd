% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_modify_db_cluster_snapshot_attribute}
\alias{docdb_modify_db_cluster_snapshot_attribute}
\title{Adds an attribute and values to, or removes an attribute and values
from, a manual DB cluster snapshot}
\usage{
docdb_modify_db_cluster_snapshot_attribute(DBClusterSnapshotIdentifier,
  AttributeName, ValuesToAdd, ValuesToRemove)
}
\arguments{
\item{DBClusterSnapshotIdentifier}{[required] The identifier for the cluster snapshot to modify the attributes for.}

\item{AttributeName}{[required] The name of the cluster snapshot attribute to modify.

To manage authorization for other AWS accounts to copy or restore a
manual cluster snapshot, set this value to \code{restore}.}

\item{ValuesToAdd}{A list of cluster snapshot attributes to add to the attribute specified
by \code{AttributeName}.

To authorize other AWS accounts to copy or restore a manual cluster
snapshot, set this list to include one or more AWS account IDs. To make
the manual cluster snapshot restorable by any AWS account, set it to
\code{all}. Do not add the \code{all} value for any manual cluster snapshots that
contain private information that you don't want to be available to all
AWS accounts.}

\item{ValuesToRemove}{A list of cluster snapshot attributes to remove from the attribute
specified by \code{AttributeName}.

To remove authorization for other AWS accounts to copy or restore a
manual cluster snapshot, set this list to include one or more AWS
account identifiers. To remove authorization for any AWS account to copy
or restore the cluster snapshot, set it to \code{all} . If you specify \code{all},
an AWS account whose account ID is explicitly added to the \code{restore}
attribute can still copy or restore a manual cluster snapshot.}
}
\description{
Adds an attribute and values to, or removes an attribute and values
from, a manual DB cluster snapshot.

To share a manual cluster snapshot with other AWS accounts, specify
\code{restore} as the \code{AttributeName}, and use the \code{ValuesToAdd} parameter to
add a list of IDs of the AWS accounts that are authorized to restore the
manual cluster snapshot. Use the value \code{all} to make the manual cluster
snapshot public, which means that it can be copied or restored by all
AWS accounts. Do not add the \code{all} value for any manual DB cluster
snapshots that contain private information that you don't want available
to all AWS accounts. If a manual cluster snapshot is encrypted, it can
be shared, but only by specifying a list of authorized AWS account IDs
for the \code{ValuesToAdd} parameter. You can't use \code{all} as a value for that
parameter in this case.
}
\section{Request syntax}{
\preformatted{svc$modify_db_cluster_snapshot_attribute(
  DBClusterSnapshotIdentifier = "string",
  AttributeName = "string",
  ValuesToAdd = list(
    "string"
  ),
  ValuesToRemove = list(
    "string"
  )
)
}
}

\keyword{internal}
