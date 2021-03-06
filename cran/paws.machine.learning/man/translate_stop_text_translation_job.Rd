% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/translate_operations.R
\name{translate_stop_text_translation_job}
\alias{translate_stop_text_translation_job}
\title{Stops an asynchronous batch translation job that is in progress}
\usage{
translate_stop_text_translation_job(JobId)
}
\arguments{
\item{JobId}{[required] The job ID of the job to be stopped.}
}
\description{
Stops an asynchronous batch translation job that is in progress.

If the job's state is \code{IN_PROGRESS}, the job will be marked for
termination and put into the \code{STOP_REQUESTED} state. If the job
completes before it can be stopped, it is put into the \code{COMPLETED}
state. Otherwise, the job is put into the \code{STOPPED} state.

Asynchronous batch translation jobs are started with the
StartTextTranslationJob operation. You can use the
DescribeTextTranslationJob or ListTextTranslationJobs operations to get
a batch translation job's \code{JobId}.
}
\section{Request syntax}{
\preformatted{svc$stop_text_translation_job(
  JobId = "string"
)
}
}

\keyword{internal}
