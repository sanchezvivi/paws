% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_create_cache_policy}
\alias{cloudfront_create_cache_policy}
\title{Creates a cache policy}
\usage{
cloudfront_create_cache_policy(CachePolicyConfig)
}
\arguments{
\item{CachePolicyConfig}{[required] A cache policy configuration.}
}
\description{
Creates a cache policy.

After you create a cache policy, you can attach it to one or more cache
behaviors. When it’s attached to a cache behavior, the cache policy
determines the following:
\itemize{
\item The values that CloudFront includes in the \emph{cache key}. These values
can include HTTP headers, cookies, and URL query strings. CloudFront
uses the cache key to find an object in its cache that it can return
to the viewer.
\item The default, minimum, and maximum time to live (TTL) values that you
want objects to stay in the CloudFront cache.
}

The headers, cookies, and query strings that are included in the cache
key are automatically included in requests that CloudFront sends to the
origin. CloudFront sends a request when it can’t find an object in its
cache that matches the request’s cache key. If you want to send values
to the origin but \emph{not} include them in the cache key, use
\code{OriginRequestPolicy}.

For more information about cache policies, see \href{https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html}{Controlling the cache key}
in the \emph{Amazon CloudFront Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$create_cache_policy(
  CachePolicyConfig = list(
    Comment = "string",
    Name = "string",
    DefaultTTL = 123,
    MaxTTL = 123,
    MinTTL = 123,
    ParametersInCacheKeyAndForwardedToOrigin = list(
      EnableAcceptEncodingGzip = TRUE|FALSE,
      EnableAcceptEncodingBrotli = TRUE|FALSE,
      HeadersConfig = list(
        HeaderBehavior = "none"|"whitelist",
        Headers = list(
          Quantity = 123,
          Items = list(
            "string"
          )
        )
      ),
      CookiesConfig = list(
        CookieBehavior = "none"|"whitelist"|"allExcept"|"all",
        Cookies = list(
          Quantity = 123,
          Items = list(
            "string"
          )
        )
      ),
      QueryStringsConfig = list(
        QueryStringBehavior = "none"|"whitelist"|"allExcept"|"all",
        QueryStrings = list(
          Quantity = 123,
          Items = list(
            "string"
          )
        )
      )
    )
  )
)
}
}

\keyword{internal}
