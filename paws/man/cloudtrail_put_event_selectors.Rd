% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_put_event_selectors}
\alias{cloudtrail_put_event_selectors}
\title{Configures an event selector or advanced event selectors for your trail}
\usage{
cloudtrail_put_event_selectors(TrailName, EventSelectors,
  AdvancedEventSelectors)
}
\arguments{
\item{TrailName}{[required] Specifies the name of the trail or trail ARN. If you specify a trail
name, the string must meet the following requirements:
\itemize{
\item Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
underscores (\\_), or dashes (-)
\item Start with a letter or number, and end with a letter or number
\item Be between 3 and 128 characters
\item Have no adjacent periods, underscores or dashes. Names like
\verb{my-_namespace} and \code{my--namespace} are invalid.
\item Not be in IP address format (for example, 192.168.5.4)
}

If you specify a trail ARN, it must be in the format:

\code{arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail}}

\item{EventSelectors}{Specifies the settings for your event selectors. You can configure up to
five event selectors for a trail. You can use either \code{EventSelectors} or
\code{AdvancedEventSelectors} in a \code{PutEventSelectors} request, but not both.
If you apply \code{EventSelectors} to a trail, any existing
\code{AdvancedEventSelectors} are overwritten.}

\item{AdvancedEventSelectors}{Specifies the settings for advanced event selectors. You can add
advanced event selectors, and conditions for your advanced event
selectors, up to a maximum of 500 values for all conditions and
selectors on a trail. You can use either \code{AdvancedEventSelectors} or
\code{EventSelectors}, but not both. If you apply \code{AdvancedEventSelectors} to
a trail, any existing \code{EventSelectors} are overwritten. For more
information about advanced event selectors, see \href{https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html}{Logging data events for trails}
in the \emph{AWS CloudTrail User Guide}.}
}
\description{
Configures an event selector or advanced event selectors for your trail.
Use event selectors or advanced event selectors to specify management
and data event settings for your trail. By default, trails created
without specific event selectors are configured to log all read and
write management events, and no data events.

When an event occurs in your account, CloudTrail evaluates the event
selectors or advanced event selectors in all trails. For each trail, if
the event matches any event selector, the trail processes and logs the
event. If the event doesn't match any event selector, the trail doesn't
log the event.

Example
\enumerate{
\item You create an event selector for a trail and specify that you want
write-only events.
\item The EC2 \code{GetConsoleOutput} and \code{RunInstances} API operations occur
in your account.
\item CloudTrail evaluates whether the events match your event selectors.
\item The \code{RunInstances} is a write-only event and it matches your event
selector. The trail logs the event.
\item The \code{GetConsoleOutput} is a read-only event that doesn't match your
event selector. The trail doesn't log the event.
}

The \code{PutEventSelectors} operation must be called from the region in
which the trail was created; otherwise, an \code{InvalidHomeRegionException}
exception is thrown.

You can configure up to five event selectors for each trail. For more
information, see \href{https://docs.aws.amazon.com/awscloudtrail/latest/userguide/}{Logging data and management events for trails} and
\href{https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html}{Quotas in AWS CloudTrail}
in the \emph{AWS CloudTrail User Guide}.

You can add advanced event selectors, and conditions for your advanced
event selectors, up to a maximum of 500 values for all conditions and
selectors on a trail. You can use either \code{AdvancedEventSelectors} or
\code{EventSelectors}, but not both. If you apply \code{AdvancedEventSelectors} to
a trail, any existing \code{EventSelectors} are overwritten. For more
information about advanced event selectors, see \href{https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html}{Logging data events for trails}
in the \emph{AWS CloudTrail User Guide}.
}
\section{Request syntax}{
\preformatted{svc$put_event_selectors(
  TrailName = "string",
  EventSelectors = list(
    list(
      ReadWriteType = "ReadOnly"|"WriteOnly"|"All",
      IncludeManagementEvents = TRUE|FALSE,
      DataResources = list(
        list(
          Type = "string",
          Values = list(
            "string"
          )
        )
      ),
      ExcludeManagementEventSources = list(
        "string"
      )
    )
  ),
  AdvancedEventSelectors = list(
    list(
      Name = "string",
      FieldSelectors = list(
        list(
          Field = "string",
          Equals = list(
            "string"
          ),
          StartsWith = list(
            "string"
          ),
          EndsWith = list(
            "string"
          ),
          NotEquals = list(
            "string"
          ),
          NotStartsWith = list(
            "string"
          ),
          NotEndsWith = list(
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
