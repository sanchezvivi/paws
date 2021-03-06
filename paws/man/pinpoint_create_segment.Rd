% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_create_segment}
\alias{pinpoint_create_segment}
\title{Creates a new segment for an application or updates the configuration,
dimension, and other settings for an existing segment that's associated
with an application}
\usage{
pinpoint_create_segment(ApplicationId, WriteSegmentRequest)
}
\arguments{
\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}

\item{WriteSegmentRequest}{[required]}
}
\description{
Creates a new segment for an application or updates the configuration,
dimension, and other settings for an existing segment that's associated
with an application.
}
\section{Request syntax}{
\preformatted{svc$create_segment(
  ApplicationId = "string",
  WriteSegmentRequest = list(
    Dimensions = list(
      Attributes = list(
        list(
          AttributeType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        )
      ),
      Behavior = list(
        Recency = list(
          Duration = "HR_24"|"DAY_7"|"DAY_14"|"DAY_30",
          RecencyType = "ACTIVE"|"INACTIVE"
        )
      ),
      Demographic = list(
        AppVersion = list(
          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        ),
        Channel = list(
          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        ),
        DeviceType = list(
          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        ),
        Make = list(
          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        ),
        Model = list(
          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        ),
        Platform = list(
          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        )
      ),
      Location = list(
        Country = list(
          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        ),
        GPSPoint = list(
          Coordinates = list(
            Latitude = 123.0,
            Longitude = 123.0
          ),
          RangeInKilometers = 123.0
        )
      ),
      Metrics = list(
        list(
          ComparisonOperator = "string",
          Value = 123.0
        )
      ),
      UserAttributes = list(
        list(
          AttributeType = "INCLUSIVE"|"EXCLUSIVE",
          Values = list(
            "string"
          )
        )
      )
    ),
    Name = "string",
    SegmentGroups = list(
      Groups = list(
        list(
          Dimensions = list(
            list(
              Attributes = list(
                list(
                  AttributeType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                )
              ),
              Behavior = list(
                Recency = list(
                  Duration = "HR_24"|"DAY_7"|"DAY_14"|"DAY_30",
                  RecencyType = "ACTIVE"|"INACTIVE"
                )
              ),
              Demographic = list(
                AppVersion = list(
                  DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                ),
                Channel = list(
                  DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                ),
                DeviceType = list(
                  DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                ),
                Make = list(
                  DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                ),
                Model = list(
                  DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                ),
                Platform = list(
                  DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                )
              ),
              Location = list(
                Country = list(
                  DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                ),
                GPSPoint = list(
                  Coordinates = list(
                    Latitude = 123.0,
                    Longitude = 123.0
                  ),
                  RangeInKilometers = 123.0
                )
              ),
              Metrics = list(
                list(
                  ComparisonOperator = "string",
                  Value = 123.0
                )
              ),
              UserAttributes = list(
                list(
                  AttributeType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                )
              )
            )
          ),
          SourceSegments = list(
            list(
              Id = "string",
              Version = 123
            )
          ),
          SourceType = "ALL"|"ANY"|"NONE",
          Type = "ALL"|"ANY"|"NONE"
        )
      ),
      Include = "ALL"|"ANY"|"NONE"
    ),
    tags = list(
      "string"
    )
  )
)
}
}

\keyword{internal}
