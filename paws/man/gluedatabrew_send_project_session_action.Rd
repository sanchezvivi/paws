% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gluedatabrew_operations.R
\name{gluedatabrew_send_project_session_action}
\alias{gluedatabrew_send_project_session_action}
\title{Performs a recipe step within an interactive AWS Glue DataBrew session
that's currently open}
\usage{
gluedatabrew_send_project_session_action(Preview, Name, RecipeStep,
  StepIndex, ClientSessionId, ViewFrame)
}
\arguments{
\item{Preview}{Returns the result of the recipe step, without applying it. The result
isn't added to the view frame stack.}

\item{Name}{[required] The name of the project to apply the action to.}

\item{RecipeStep}{}

\item{StepIndex}{The index from which to preview a step. This index is used to preview
the result of steps that have already been applied, so that the
resulting view frame is from earlier in the view frame stack.}

\item{ClientSessionId}{A unique identifier for an interactive session that's currently open and
ready for work. The action will be performed on this session.}

\item{ViewFrame}{}
}
\description{
Performs a recipe step within an interactive AWS Glue DataBrew session
that's currently open.
}
\section{Request syntax}{
\preformatted{svc$send_project_session_action(
  Preview = TRUE|FALSE,
  Name = "string",
  RecipeStep = list(
    Action = list(
      Operation = "string",
      Parameters = list(
        "string"
      )
    ),
    ConditionExpressions = list(
      list(
        Condition = "string",
        Value = "string",
        TargetColumn = "string"
      )
    )
  ),
  StepIndex = 123,
  ClientSessionId = "string",
  ViewFrame = list(
    StartColumnIndex = 123,
    ColumnRange = 123,
    HiddenColumns = list(
      "string"
    )
  )
)
}
}

\keyword{internal}
