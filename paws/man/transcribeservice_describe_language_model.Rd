% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcribeservice_operations.R
\name{transcribeservice_describe_language_model}
\alias{transcribeservice_describe_language_model}
\title{Gets information about a single custom language model}
\usage{
transcribeservice_describe_language_model(ModelName)
}
\arguments{
\item{ModelName}{[required] The name of the custom language model you submit to get more
information.}
}
\description{
Gets information about a single custom language model. Use this
information to see details about the language model in your AWS account.
You can also see whether the base language model used to create your
custom language model has been updated. If Amazon Transcribe has updated
the base model, you can create a new custom language model using the
updated base model. If the language model wasn't created, you can use
this operation to understand why Amazon Transcribe couldn't create it.
}
\section{Request syntax}{
\preformatted{svc$describe_language_model(
  ModelName = "string"
)
}
}

\keyword{internal}
