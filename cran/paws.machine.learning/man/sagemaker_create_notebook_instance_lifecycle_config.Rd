% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_notebook_instance_lifecycle_config}
\alias{sagemaker_create_notebook_instance_lifecycle_config}
\title{Creates a lifecycle configuration that you can associate with a notebook
instance}
\usage{
sagemaker_create_notebook_instance_lifecycle_config(
  NotebookInstanceLifecycleConfigName, OnCreate, OnStart)
}
\arguments{
\item{NotebookInstanceLifecycleConfigName}{[required] The name of the lifecycle configuration.}

\item{OnCreate}{A shell script that runs only once, when you create a notebook instance.
The shell script must be a base64-encoded string.}

\item{OnStart}{A shell script that runs every time you start a notebook instance,
including when you create the notebook instance. The shell script must
be a base64-encoded string.}
}
\description{
Creates a lifecycle configuration that you can associate with a notebook
instance. A \emph{lifecycle configuration} is a collection of shell scripts
that run when you create or start a notebook instance.

Each lifecycle configuration script has a limit of 16384 characters.

The value of the \verb{$PATH} environment variable that is available to both
scripts is \verb{/sbin:bin:/usr/sbin:/usr/bin}.

View CloudWatch Logs for notebook instance lifecycle configurations in
log group \verb{/aws/sagemaker/NotebookInstances} in log stream
\verb{\\\[notebook-instance-name\\\]/\\\[LifecycleConfigHook\\\]}.

Lifecycle configuration scripts cannot run for longer than 5 minutes. If
a script runs for longer than 5 minutes, it fails and the notebook
instance is not created or started.

For information about notebook instance lifestyle configurations, see
\href{https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html}{Step 2.1: (Optional) Customize a Notebook Instance}.
}
\section{Request syntax}{
\preformatted{svc$create_notebook_instance_lifecycle_config(
  NotebookInstanceLifecycleConfigName = "string",
  OnCreate = list(
    list(
      Content = "string"
    )
  ),
  OnStart = list(
    list(
      Content = "string"
    )
  )
)
}
}

\keyword{internal}
