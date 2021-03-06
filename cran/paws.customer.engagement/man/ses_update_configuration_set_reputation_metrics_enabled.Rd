% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ses_operations.R
\name{ses_update_configuration_set_reputation_metrics_enabled}
\alias{ses_update_configuration_set_reputation_metrics_enabled}
\title{Enables or disables the publishing of reputation metrics for emails sent
using a specific configuration set in a given AWS Region}
\usage{
ses_update_configuration_set_reputation_metrics_enabled(
  ConfigurationSetName, Enabled)
}
\arguments{
\item{ConfigurationSetName}{[required] The name of the configuration set that you want to update.}

\item{Enabled}{[required] Describes whether or not Amazon SES will publish reputation metrics for
the configuration set, such as bounce and complaint rates, to Amazon
CloudWatch.}
}
\description{
Enables or disables the publishing of reputation metrics for emails sent
using a specific configuration set in a given AWS Region. Reputation
metrics include bounce and complaint rates. These metrics are published
to Amazon CloudWatch. By using CloudWatch, you can create alarms when
bounce or complaint rates exceed certain thresholds.

You can execute this operation no more than once per second.
}
\section{Request syntax}{
\preformatted{svc$update_configuration_set_reputation_metrics_enabled(
  ConfigurationSetName = "string",
  Enabled = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# Set the reputationMetricsEnabled flag for a specific configuration set.
svc$update_configuration_set_reputation_metrics_enabled(
  ConfigurationSetName = "foo",
  Enabled = TRUE
)
}

}
\keyword{internal}
