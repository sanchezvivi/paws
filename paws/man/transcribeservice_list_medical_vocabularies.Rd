% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcribeservice_operations.R
\name{transcribeservice_list_medical_vocabularies}
\alias{transcribeservice_list_medical_vocabularies}
\title{Returns a list of vocabularies that match the specified criteria}
\usage{
transcribeservice_list_medical_vocabularies(NextToken, MaxResults,
  StateEquals, NameContains)
}
\arguments{
\item{NextToken}{If the result of your previous request to \code{ListMedicalVocabularies} was
truncated, include the \code{NextToken} to fetch the next set of
vocabularies.}

\item{MaxResults}{The maximum number of vocabularies to return in the response.}

\item{StateEquals}{When specified, returns only vocabularies with the \code{VocabularyState}
equal to the specified vocabulary state. Use this field to see which
vocabularies are ready for your medical transcription jobs.}

\item{NameContains}{Returns vocabularies whose names contain the specified string. The
search is not case sensitive. \code{ListMedicalVocabularies} returns both
"\code{vocabularyname}" and "\code{VocabularyName}".}
}
\description{
Returns a list of vocabularies that match the specified criteria. If you
don't enter a value in any of the request parameters, returns the entire
list of vocabularies.
}
\section{Request syntax}{
\preformatted{svc$list_medical_vocabularies(
  NextToken = "string",
  MaxResults = 123,
  StateEquals = "PENDING"|"READY"|"FAILED",
  NameContains = "string"
)
}
}

\keyword{internal}
