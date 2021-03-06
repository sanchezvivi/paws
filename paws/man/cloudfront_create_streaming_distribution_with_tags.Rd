% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_create_streaming_distribution_with_tags}
\alias{cloudfront_create_streaming_distribution_with_tags}
\title{This API is deprecated}
\usage{
cloudfront_create_streaming_distribution_with_tags(
  StreamingDistributionConfigWithTags)
}
\arguments{
\item{StreamingDistributionConfigWithTags}{[required] The streaming distribution's configuration information.}
}
\description{
This API is deprecated. Amazon CloudFront is deprecating real-time
messaging protocol (RTMP) distributions on December 31, 2020. For more
information, \href{https://forums.aws.amazon.com:443/ann.jspa?annID=7356}{read the announcement} on
the Amazon CloudFront discussion forum.
}
\section{Request syntax}{
\preformatted{svc$create_streaming_distribution_with_tags(
  StreamingDistributionConfigWithTags = list(
    StreamingDistributionConfig = list(
      CallerReference = "string",
      S3Origin = list(
        DomainName = "string",
        OriginAccessIdentity = "string"
      ),
      Aliases = list(
        Quantity = 123,
        Items = list(
          "string"
        )
      ),
      Comment = "string",
      Logging = list(
        Enabled = TRUE|FALSE,
        Bucket = "string",
        Prefix = "string"
      ),
      TrustedSigners = list(
        Enabled = TRUE|FALSE,
        Quantity = 123,
        Items = list(
          "string"
        )
      ),
      PriceClass = "PriceClass_100"|"PriceClass_200"|"PriceClass_All",
      Enabled = TRUE|FALSE
    ),
    Tags = list(
      Items = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  )
)
}
}

\keyword{internal}
