% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_delete_db_cluster_parameter_group}
\alias{rds_delete_db_cluster_parameter_group}
\title{Deletes a specified DB cluster parameter group}
\usage{
rds_delete_db_cluster_parameter_group(DBClusterParameterGroupName)
}
\arguments{
\item{DBClusterParameterGroupName}{[required] The name of the DB cluster parameter group.

Constraints:
\itemize{
\item Must be the name of an existing DB cluster parameter group.
\item You can't delete a default DB cluster parameter group.
\item Can't be associated with any DB clusters.
}}
}
\description{
Deletes a specified DB cluster parameter group. The DB cluster parameter
group to be deleted can't be associated with any DB clusters.

For more information on Amazon Aurora, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html}{What Is Amazon Aurora?}
in the \emph{Amazon Aurora User Guide.}

This action only applies to Aurora DB clusters.
}
\section{Request syntax}{
\preformatted{svc$delete_db_cluster_parameter_group(
  DBClusterParameterGroupName = "string"
)
}
}

\keyword{internal}
