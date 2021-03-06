% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rekognition_operations.R
\name{rekognition_get_text_detection}
\alias{rekognition_get_text_detection}
\title{Gets the text detection results of a Amazon Rekognition Video analysis
started by StartTextDetection}
\usage{
rekognition_get_text_detection(JobId, MaxResults, NextToken)
}
\arguments{
\item{JobId}{[required] Job identifier for the text detection operation for which you want
results returned. You get the job identifer from an initial call to
\code{StartTextDetection}.}

\item{MaxResults}{Maximum number of results to return per paginated call. The largest
value you can specify is 1000.}

\item{NextToken}{If the previous response was incomplete (because there are more labels
to retrieve), Amazon Rekognition Video returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
text.}
}
\description{
Gets the text detection results of a Amazon Rekognition Video analysis
started by StartTextDetection.

Text detection with Amazon Rekognition Video is an asynchronous
operation. You start text detection by calling StartTextDetection which
returns a job identifier (\code{JobId}) When the text detection operation
finishes, Amazon Rekognition publishes a completion status to the Amazon
Simple Notification Service topic registered in the initial call to
\code{StartTextDetection}. To get the results of the text detection
operation, first check that the status value published to the Amazon SNS
topic is \code{SUCCEEDED}. if so, call \code{GetTextDetection} and pass the job
identifier (\code{JobId}) from the initial call of \code{StartLabelDetection}.

\code{GetTextDetection} returns an array of detected text (\code{TextDetections})
sorted by the time the text was detected, up to 50 words per frame of
video.

Each element of the array includes the detected text, the precentage
confidence in the acuracy of the detected text, the time the text was
detected, bounding box information for where the text was located, and
unique identifiers for words and their lines.

Use MaxResults parameter to limit the number of text detections
returned. If there are more results than specified in \code{MaxResults}, the
value of \code{NextToken} in the operation response contains a pagination
token for getting the next set of results. To get the next page of
results, call \code{GetTextDetection} and populate the \code{NextToken} request
parameter with the token value returned from the previous call to
\code{GetTextDetection}.
}
\section{Request syntax}{
\preformatted{svc$get_text_detection(
  JobId = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
