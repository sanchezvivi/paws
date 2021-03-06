% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotsitewise_operations.R
\name{iotsitewise_batch_put_asset_property_value}
\alias{iotsitewise_batch_put_asset_property_value}
\title{Sends a list of asset property values to AWS IoT SiteWise}
\usage{
iotsitewise_batch_put_asset_property_value(entries)
}
\arguments{
\item{entries}{[required] The list of asset property value entries for the batch put request. You
can specify up to 10 entries per request.}
}
\description{
Sends a list of asset property values to AWS IoT SiteWise. Each value is
a timestamp-quality-value (TQV) data point. For more information, see
\href{https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html}{Ingesting data using the API}
in the \emph{AWS IoT SiteWise User Guide}.

To identify an asset property, you must specify one of the following:
\itemize{
\item The \code{assetId} and \code{propertyId} of an asset property.
\item A \code{propertyAlias}, which is a data stream alias (for example,
\verb{/company/windfarm/3/turbine/7/temperature}). To define an asset
property's alias, see
\href{https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html}{UpdateAssetProperty}.
}

With respect to Unix epoch time, AWS IoT SiteWise accepts only TQVs that
have a timestamp of no more than 7 days in the past and no more than 5
minutes in the future. AWS IoT SiteWise rejects timestamps outside of
the inclusive range of [-7 days, +5 minutes] and returns a
\code{TimestampOutOfRangeException} error.

For each asset property, AWS IoT SiteWise overwrites TQVs with duplicate
timestamps unless the newer TQV has a different quality. For example, if
you store a TQV \verb{\\\{T1, GOOD, V1\\\}}, then storing \verb{\\\{T1, GOOD, V2\\\}} replaces
the existing TQV.

AWS IoT SiteWise authorizes access to each \code{BatchPutAssetPropertyValue}
entry individually. For more information, see
\href{https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action}{BatchPutAssetPropertyValue authorization}
in the \emph{AWS IoT SiteWise User Guide}.
}
\section{Request syntax}{
\preformatted{svc$batch_put_asset_property_value(
  entries = list(
    list(
      entryId = "string",
      assetId = "string",
      propertyId = "string",
      propertyAlias = "string",
      propertyValues = list(
        list(
          value = list(
            stringValue = "string",
            integerValue = 123,
            doubleValue = 123.0,
            booleanValue = TRUE|FALSE
          ),
          timestamp = list(
            timeInSeconds = 123,
            offsetInNanos = 123
          ),
          quality = "GOOD"|"BAD"|"UNCERTAIN"
        )
      )
    )
  )
)
}
}

\keyword{internal}
