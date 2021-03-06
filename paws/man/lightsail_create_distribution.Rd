% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_create_distribution}
\alias{lightsail_create_distribution}
\title{Creates an Amazon Lightsail content delivery network (CDN) distribution}
\usage{
lightsail_create_distribution(distributionName, origin,
  defaultCacheBehavior, cacheBehaviorSettings, cacheBehaviors, bundleId,
  tags)
}
\arguments{
\item{distributionName}{[required] The name for the distribution.}

\item{origin}{[required] An object that describes the origin resource for the distribution, such
as a Lightsail instance or load balancer.

The distribution pulls, caches, and serves content from the origin.}

\item{defaultCacheBehavior}{[required] An object that describes the default cache behavior for the
distribution.}

\item{cacheBehaviorSettings}{An object that describes the cache behavior settings for the
distribution.}

\item{cacheBehaviors}{An array of objects that describe the per-path cache behavior for the
distribution.}

\item{bundleId}{[required] The bundle ID to use for the distribution.

A distribution bundle describes the specifications of your distribution,
such as the monthly cost and monthly network transfer quota.

Use the \code{GetDistributionBundles} action to get a list of distribution
bundle IDs that you can specify.}

\item{tags}{The tag keys and optional values to add to the distribution during
create.

Use the \code{TagResource} action to tag a resource after it's created.}
}
\description{
Creates an Amazon Lightsail content delivery network (CDN) distribution.

A distribution is a globally distributed network of caching servers that
improve the performance of your website or web application hosted on a
Lightsail instance. For more information, see Content delivery networks
in Amazon Lightsail.
}
\section{Request syntax}{
\preformatted{svc$create_distribution(
  distributionName = "string",
  origin = list(
    name = "string",
    regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2",
    protocolPolicy = "http-only"|"https-only"
  ),
  defaultCacheBehavior = list(
    behavior = "dont-cache"|"cache"
  ),
  cacheBehaviorSettings = list(
    defaultTTL = 123,
    minimumTTL = 123,
    maximumTTL = 123,
    allowedHTTPMethods = "string",
    cachedHTTPMethods = "string",
    forwardedCookies = list(
      option = "none"|"allow-list"|"all",
      cookiesAllowList = list(
        "string"
      )
    ),
    forwardedHeaders = list(
      option = "none"|"allow-list"|"all",
      headersAllowList = list(
        "Accept"|"Accept-Charset"|"Accept-Datetime"|"Accept-Encoding"|"Accept-Language"|"Authorization"|"CloudFront-Forwarded-Proto"|"CloudFront-Is-Desktop-Viewer"|"CloudFront-Is-Mobile-Viewer"|"CloudFront-Is-SmartTV-Viewer"|"CloudFront-Is-Tablet-Viewer"|"CloudFront-Viewer-Country"|"Host"|"Origin"|"Referer"
      )
    ),
    forwardedQueryStrings = list(
      option = TRUE|FALSE,
      queryStringsAllowList = list(
        "string"
      )
    )
  ),
  cacheBehaviors = list(
    list(
      path = "string",
      behavior = "dont-cache"|"cache"
    )
  ),
  bundleId = "string",
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
