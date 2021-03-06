% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forecastservice_operations.R
\name{forecastservice_untag_resource}
\alias{forecastservice_untag_resource}
\title{Deletes the specified tags from a resource}
\usage{
forecastservice_untag_resource(ResourceArn, TagKeys)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) that identifies the resource for which to
list the tags. Currently, the supported resources are Forecast dataset
groups, datasets, dataset import jobs, predictors, forecasts, and
forecast exports.}

\item{TagKeys}{[required] The keys of the tags to be removed.}
}
\description{
Deletes the specified tags from a resource.
}
\section{Request syntax}{
\preformatted{svc$untag_resource(
  ResourceArn = "string",
  TagKeys = list(
    "string"
  )
)
}
}

\keyword{internal}
