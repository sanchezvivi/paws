% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/licensemanager_operations.R
\name{licensemanager_update_license_configuration}
\alias{licensemanager_update_license_configuration}
\title{Modifies the attributes of an existing license configuration}
\usage{
licensemanager_update_license_configuration(LicenseConfigurationArn,
  LicenseConfigurationStatus, LicenseRules, LicenseCount,
  LicenseCountHardLimit, Name, Description, ProductInformationList,
  DisassociateWhenNotFound)
}
\arguments{
\item{LicenseConfigurationArn}{[required] Amazon Resource Name (ARN) of the license configuration.}

\item{LicenseConfigurationStatus}{New status of the license configuration.}

\item{LicenseRules}{New license rule. The only rule that you can add after you create a
license configuration is licenseAffinityToHost.}

\item{LicenseCount}{New number of licenses managed by the license configuration.}

\item{LicenseCountHardLimit}{New hard limit of the number of available licenses.}

\item{Name}{New name of the license configuration.}

\item{Description}{New description of the license configuration.}

\item{ProductInformationList}{New product information.}

\item{DisassociateWhenNotFound}{When true, disassociates a resource when software is uninstalled.}
}
\description{
Modifies the attributes of an existing license configuration.
}
\section{Request syntax}{
\preformatted{svc$update_license_configuration(
  LicenseConfigurationArn = "string",
  LicenseConfigurationStatus = "AVAILABLE"|"DISABLED",
  LicenseRules = list(
    "string"
  ),
  LicenseCount = 123,
  LicenseCountHardLimit = TRUE|FALSE,
  Name = "string",
  Description = "string",
  ProductInformationList = list(
    list(
      ResourceType = "string",
      ProductInformationFilterList = list(
        list(
          ProductInformationFilterName = "string",
          ProductInformationFilterValue = list(
            "string"
          ),
          ProductInformationFilterComparator = "string"
        )
      )
    )
  ),
  DisassociateWhenNotFound = TRUE|FALSE
)
}
}

\keyword{internal}
