% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directoryservice_operations.R
\name{directoryservice_create_microsoft_ad}
\alias{directoryservice_create_microsoft_ad}
\title{Creates a Microsoft AD directory in the AWS Cloud}
\usage{
directoryservice_create_microsoft_ad(Name, ShortName, Password,
  Description, VpcSettings, Edition, Tags)
}
\arguments{
\item{Name}{[required] The fully qualified domain name for the AWS Managed Microsoft AD
directory, such as \code{corp.example.com}. This name will resolve inside
your VPC only. It does not need to be publicly resolvable.}

\item{ShortName}{The NetBIOS name for your domain, such as \code{CORP}. If you don't specify a
NetBIOS name, it will default to the first part of your directory DNS.
For example, \code{CORP} for the directory DNS \code{corp.example.com}.}

\item{Password}{[required] The password for the default administrative user named \code{Admin}.

If you need to change the password for the administrator account, you
can use the ResetUserPassword API call.}

\item{Description}{A description for the directory. This label will appear on the AWS
console \verb{Directory Details} page after the directory is created.}

\item{VpcSettings}{[required] Contains VPC information for the CreateDirectory or CreateMicrosoftAD
operation.}

\item{Edition}{AWS Managed Microsoft AD is available in two editions: \code{Standard} and
\code{Enterprise}. \code{Enterprise} is the default.}

\item{Tags}{The tags to be assigned to the AWS Managed Microsoft AD directory.}
}
\description{
Creates a Microsoft AD directory in the AWS Cloud. For more information,
see \href{https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html}{AWS Managed Microsoft AD}
in the \emph{AWS Directory Service Admin Guide}.

Before you call \emph{CreateMicrosoftAD}, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the \emph{CreateMicrosoftAD}
operation, see \href{https://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html}{AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference}.
}
\section{Request syntax}{
\preformatted{svc$create_microsoft_ad(
  Name = "string",
  ShortName = "string",
  Password = "string",
  Description = "string",
  VpcSettings = list(
    VpcId = "string",
    SubnetIds = list(
      "string"
    )
  ),
  Edition = "Enterprise"|"Standard",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
