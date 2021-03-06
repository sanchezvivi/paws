% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafregional_operations.R
\name{wafregional_get_regex_match_set}
\alias{wafregional_get_regex_match_set}
\title{This is AWS WAF Classic documentation}
\usage{
wafregional_get_regex_match_set(RegexMatchSetId)
}
\arguments{
\item{RegexMatchSetId}{[required] The \code{RegexMatchSetId} of the RegexMatchSet that you want to get.
\code{RegexMatchSetId} is returned by CreateRegexMatchSet and by
ListRegexMatchSets.}
}
\description{
This is \strong{AWS WAF Classic} documentation. For more information, see
\href{https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html}{AWS WAF Classic}
in the developer guide.

\strong{For the latest version of AWS WAF}, use the AWS WAFV2 API and see the
\href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Returns the RegexMatchSet specified by \code{RegexMatchSetId}.
}
\section{Request syntax}{
\preformatted{svc$get_regex_match_set(
  RegexMatchSetId = "string"
)
}
}

\keyword{internal}
