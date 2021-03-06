% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_update_document_metadata}
\alias{ssm_update_document_metadata}
\title{Updates information related to approval reviews for a specific version
of a document}
\usage{
ssm_update_document_metadata(Name, DocumentVersion, DocumentReviews)
}
\arguments{
\item{Name}{[required] The name of the document for which a version is to be updated.}

\item{DocumentVersion}{The version of a document to update.}

\item{DocumentReviews}{[required] The document review details to update.}
}
\description{
Updates information related to approval reviews for a specific version
of a document.
}
\section{Request syntax}{
\preformatted{svc$update_document_metadata(
  Name = "string",
  DocumentVersion = "string",
  DocumentReviews = list(
    Action = "SendForReview"|"UpdateReview"|"Approve"|"Reject",
    Comment = list(
      list(
        Type = "Comment",
        Content = "string"
      )
    )
  )
)
}
}

\keyword{internal}
