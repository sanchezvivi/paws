% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appstream_operations.R
\name{appstream_create_fleet}
\alias{appstream_create_fleet}
\title{Creates a fleet}
\usage{
appstream_create_fleet(Name, ImageName, ImageArn, InstanceType,
  FleetType, ComputeCapacity, VpcConfig, MaxUserDurationInSeconds,
  DisconnectTimeoutInSeconds, Description, DisplayName,
  EnableDefaultInternetAccess, DomainJoinInfo, Tags,
  IdleDisconnectTimeoutInSeconds, IamRoleArn, StreamView)
}
\arguments{
\item{Name}{[required] A unique name for the fleet.}

\item{ImageName}{The name of the image used to create the fleet.}

\item{ImageArn}{The ARN of the public, private, or shared image to use.}

\item{InstanceType}{[required] The instance type to use when launching fleet instances. The following
instance types are available:
\itemize{
\item stream.standard.medium
\item stream.standard.large
\item stream.compute.large
\item stream.compute.xlarge
\item stream.compute.2xlarge
\item stream.compute.4xlarge
\item stream.compute.8xlarge
\item stream.memory.large
\item stream.memory.xlarge
\item stream.memory.2xlarge
\item stream.memory.4xlarge
\item stream.memory.8xlarge
\item stream.memory.z1d.large
\item stream.memory.z1d.xlarge
\item stream.memory.z1d.2xlarge
\item stream.memory.z1d.3xlarge
\item stream.memory.z1d.6xlarge
\item stream.memory.z1d.12xlarge
\item stream.graphics-design.large
\item stream.graphics-design.xlarge
\item stream.graphics-design.2xlarge
\item stream.graphics-design.4xlarge
\item stream.graphics-desktop.2xlarge
\item stream.graphics.g4dn.xlarge
\item stream.graphics.g4dn.2xlarge
\item stream.graphics.g4dn.4xlarge
\item stream.graphics.g4dn.8xlarge
\item stream.graphics.g4dn.12xlarge
\item stream.graphics.g4dn.16xlarge
\item stream.graphics-pro.4xlarge
\item stream.graphics-pro.8xlarge
\item stream.graphics-pro.16xlarge
}}

\item{FleetType}{The fleet type.
\subsection{ALWAYS\\_ON}{

Provides users with instant-on access to their apps. You are charged for
all running instances in your fleet, even if no users are streaming
apps.
}

\subsection{ON\\_DEMAND}{

Provide users with access to applications after they connect, which
takes one to two minutes. You are charged for instance streaming when
users are connected and a small hourly fee for instances that are not
streaming apps.
}}

\item{ComputeCapacity}{[required] The desired capacity for the fleet.}

\item{VpcConfig}{The VPC configuration for the fleet.}

\item{MaxUserDurationInSeconds}{The maximum amount of time that a streaming session can remain active,
in seconds. If users are still connected to a streaming instance five
minutes before this limit is reached, they are prompted to save any open
documents before being disconnected. After this time elapses, the
instance is terminated and replaced by a new instance.

Specify a value between 600 and 360000.}

\item{DisconnectTimeoutInSeconds}{The amount of time that a streaming session remains active after users
disconnect. If users try to reconnect to the streaming session after a
disconnection or network interruption within this time interval, they
are connected to their previous session. Otherwise, they are connected
to a new session with a new streaming instance.

Specify a value between 60 and 360000.}

\item{Description}{The description to display.}

\item{DisplayName}{The fleet name to display.}

\item{EnableDefaultInternetAccess}{Enables or disables default internet access for the fleet.}

\item{DomainJoinInfo}{The name of the directory and organizational unit (OU) to use to join
the fleet to a Microsoft Active Directory domain.}

\item{Tags}{The tags to associate with the fleet. A tag is a key-value pair, and the
value is optional. For example, Environment=Test. If you do not specify
a value, Environment=.

If you do not specify a value, the value is set to an empty string.

Generally allowed characters are: letters, numbers, and spaces
representable in UTF-8, and the following special characters:

\\_ . : / = + \\ - @

For more information, see \href{https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html}{Tagging Your Resources}
in the \emph{Amazon AppStream 2.0 Administration Guide}.}

\item{IdleDisconnectTimeoutInSeconds}{The amount of time that users can be idle (inactive) before they are
disconnected from their streaming session and the
\code{DisconnectTimeoutInSeconds} time interval begins. Users are notified
before they are disconnected due to inactivity. If they try to reconnect
to the streaming session before the time interval specified in
\code{DisconnectTimeoutInSeconds} elapses, they are connected to their
previous session. Users are considered idle when they stop providing
keyboard or mouse input during their streaming session. File uploads and
downloads, audio in, audio out, and pixels changing do not qualify as
user activity. If users continue to be idle after the time interval in
\code{IdleDisconnectTimeoutInSeconds} elapses, they are disconnected.

To prevent users from being disconnected due to inactivity, specify a
value of 0. Otherwise, specify a value between 60 and 3600. The default
value is 0.

If you enable this feature, we recommend that you specify a value that
corresponds exactly to a whole number of minutes (for example, 60, 120,
and 180). If you don't do this, the value is rounded to the nearest
minute. For example, if you specify a value of 70, users are
disconnected after 1 minute of inactivity. If you specify a value that
is at the midpoint between two different minutes, the value is rounded
up. For example, if you specify a value of 90, users are disconnected
after 2 minutes of inactivity.}

\item{IamRoleArn}{The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To
assume a role, a fleet instance calls the AWS Security Token Service
(STS) \code{AssumeRole} API operation and passes the ARN of the role to use.
The operation creates a new session with temporary credentials.
AppStream 2.0 retrieves the temporary credentials and creates the
\strong{appstream\\_machine\\_role} credential profile on the instance.

For more information, see \href{https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html}{Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances}
in the \emph{Amazon AppStream 2.0 Administration Guide}.}

\item{StreamView}{The AppStream 2.0 view that is displayed to your users when they stream
from the fleet. When \code{APP} is specified, only the windows of
applications opened by users display. When \code{DESKTOP} is specified, the
standard desktop that is provided by the operating system displays.

The default value is \code{APP}.}
}
\description{
Creates a fleet. A fleet consists of streaming instances that run a
specified image.
}
\section{Request syntax}{
\preformatted{svc$create_fleet(
  Name = "string",
  ImageName = "string",
  ImageArn = "string",
  InstanceType = "string",
  FleetType = "ALWAYS_ON"|"ON_DEMAND",
  ComputeCapacity = list(
    DesiredInstances = 123
  ),
  VpcConfig = list(
    SubnetIds = list(
      "string"
    ),
    SecurityGroupIds = list(
      "string"
    )
  ),
  MaxUserDurationInSeconds = 123,
  DisconnectTimeoutInSeconds = 123,
  Description = "string",
  DisplayName = "string",
  EnableDefaultInternetAccess = TRUE|FALSE,
  DomainJoinInfo = list(
    DirectoryName = "string",
    OrganizationalUnitDistinguishedName = "string"
  ),
  Tags = list(
    "string"
  ),
  IdleDisconnectTimeoutInSeconds = 123,
  IamRoleArn = "string",
  StreamView = "APP"|"DESKTOP"
)
}
}

\keyword{internal}
