% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_create_core_definition}
\alias{greengrass_create_core_definition}
\title{Creates a core definition}
\usage{
greengrass_create_core_definition(AmznClientToken, InitialVersion, Name,
  tags)
}
\arguments{
\item{AmznClientToken}{A client token used to correlate requests and responses.}

\item{InitialVersion}{Information about the initial version of the core definition.}

\item{Name}{The name of the core definition.}

\item{tags}{Tag(s) to add to the new resource.}
}
\description{
Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
}
\section{Request syntax}{
\preformatted{svc$create_core_definition(
  AmznClientToken = "string",
  InitialVersion = list(
    Cores = list(
      list(
        CertificateArn = "string",
        Id = "string",
        SyncShadow = TRUE|FALSE,
        ThingArn = "string"
      )
    )
  ),
  Name = "string",
  tags = list(
    "string"
  )
)
}
}

\keyword{internal}
