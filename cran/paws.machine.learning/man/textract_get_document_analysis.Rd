% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/textract_operations.R
\name{textract_get_document_analysis}
\alias{textract_get_document_analysis}
\title{Gets the results for an Amazon Textract asynchronous operation that
analyzes text in a document}
\usage{
textract_get_document_analysis(JobId, MaxResults, NextToken)
}
\arguments{
\item{JobId}{[required] A unique identifier for the text-detection job. The \code{JobId} is returned
from \code{StartDocumentAnalysis}. A \code{JobId} value is only valid for 7 days.}

\item{MaxResults}{The maximum number of results to return per paginated call. The largest
value that you can specify is 1,000. If you specify a value greater than
1,000, a maximum of 1,000 results is returned. The default value is
1,000.}

\item{NextToken}{If the previous response was incomplete (because there are more blocks
to retrieve), Amazon Textract returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
blocks.}
}
\description{
Gets the results for an Amazon Textract asynchronous operation that
analyzes text in a document.

You start asynchronous text analysis by calling StartDocumentAnalysis,
which returns a job identifier (\code{JobId}). When the text analysis
operation finishes, Amazon Textract publishes a completion status to the
Amazon Simple Notification Service (Amazon SNS) topic that's registered
in the initial call to \code{StartDocumentAnalysis}. To get the results of
the text-detection operation, first check that the status value
published to the Amazon SNS topic is \code{SUCCEEDED}. If so, call
\code{GetDocumentAnalysis}, and pass the job identifier (\code{JobId}) from the
initial call to \code{StartDocumentAnalysis}.

\code{GetDocumentAnalysis} returns an array of Block objects. The following
types of information are returned:
\itemize{
\item Form data (key-value pairs). The related information is returned in
two Block objects, each of type \code{KEY_VALUE_SET}: a KEY \code{Block}
object and a VALUE \code{Block} object. For example, \emph{Name: Ana Silva
Carolina} contains a key and value. \emph{Name:} is the key. \emph{Ana Silva
Carolina} is the value.
\item Table and table cell data. A TABLE \code{Block} object contains
information about a detected table. A CELL \code{Block} object is
returned for each cell in a table.
\item Lines and words of text. A LINE \code{Block} object contains one or more
WORD \code{Block} objects. All lines and words that are detected in the
document are returned (including text that doesn't have a
relationship with the value of the \code{StartDocumentAnalysis}
\code{FeatureTypes} input parameter).
}

Selection elements such as check boxes and option buttons (radio
buttons) can be detected in form data and in tables. A
SELECTION\\_ELEMENT \code{Block} object contains information about a selection
element, including the selection status.

Use the \code{MaxResults} parameter to limit the number of blocks that are
returned. If there are more results than specified in \code{MaxResults}, the
value of \code{NextToken} in the operation response contains a pagination
token for getting the next set of results. To get the next page of
results, call \code{GetDocumentAnalysis}, and populate the \code{NextToken}
request parameter with the token value that's returned from the previous
call to \code{GetDocumentAnalysis}.

For more information, see \href{https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html}{Document Text Analysis}.
}
\section{Request syntax}{
\preformatted{svc$get_document_analysis(
  JobId = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
