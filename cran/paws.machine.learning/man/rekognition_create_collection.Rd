% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rekognition_operations.R
\name{rekognition_create_collection}
\alias{rekognition_create_collection}
\title{Creates a collection in an AWS Region}
\usage{
rekognition_create_collection(CollectionId)
}
\arguments{
\item{CollectionId}{[required] ID for the collection that you are creating.}
}
\description{
Creates a collection in an AWS Region. You can add faces to the
collection using the IndexFaces operation.

For example, you might create collections, one for each of your
application users. A user can then index faces using the \code{IndexFaces}
operation and persist results in a specific collection. Then, a user can
search the collection for faces in the user-specific container.

When you create a collection, it is associated with the latest version
of the face model version.

Collection names are case-sensitive.

This operation requires permissions to perform the
\code{rekognition:CreateCollection} action.
}
\section{Request syntax}{
\preformatted{svc$create_collection(
  CollectionId = "string"
)
}
}

\examples{
\dontrun{
# This operation creates a Rekognition collection for storing image data.
svc$create_collection(
  CollectionId = "myphotos"
)
}

}
\keyword{internal}
