% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_run_instances}
\alias{ec2_run_instances}
\title{Launches the specified number of instances using an AMI for which you
have permissions}
\usage{
ec2_run_instances(BlockDeviceMappings, ImageId, InstanceType,
  Ipv6AddressCount, Ipv6Addresses, KernelId, KeyName, MaxCount, MinCount,
  Monitoring, Placement, RamdiskId, SecurityGroupIds, SecurityGroups,
  SubnetId, UserData, AdditionalInfo, ClientToken, DisableApiTermination,
  DryRun, EbsOptimized, IamInstanceProfile,
  InstanceInitiatedShutdownBehavior, NetworkInterfaces, PrivateIpAddress,
  ElasticGpuSpecification, ElasticInferenceAccelerators,
  TagSpecifications, LaunchTemplate, InstanceMarketOptions,
  CreditSpecification, CpuOptions, CapacityReservationSpecification,
  HibernationOptions, LicenseSpecifications, MetadataOptions,
  EnclaveOptions)
}
\arguments{
\item{BlockDeviceMappings}{The block device mapping entries.}

\item{ImageId}{The ID of the AMI. An AMI ID is required to launch an instance and must
be specified here or in a launch template.}

\item{InstanceType}{The instance type. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html}{Instance types}
in the \emph{Amazon Elastic Compute Cloud User Guide}.

Default: \code{m1.small}}

\item{Ipv6AddressCount}{[EC2-VPC] The number of IPv6 addresses to associate with the primary
network interface. Amazon EC2 chooses the IPv6 addresses from the range
of your subnet. You cannot specify this option and the option to assign
specific IPv6 addresses in the same request. You can specify this option
if you've specified a minimum number of instances to launch.

You cannot specify this option and the network interfaces option in the
same request.}

\item{Ipv6Addresses}{[EC2-VPC] The IPv6 addresses from the range of the subnet to associate
with the primary network interface. You cannot specify this option and
the option to assign a number of IPv6 addresses in the same request. You
cannot specify this option if you've specified a minimum number of
instances to launch.

You cannot specify this option and the network interfaces option in the
same request.}

\item{KernelId}{The ID of the kernel.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html}{PV-GRUB}
in the \emph{Amazon Elastic Compute Cloud User Guide}.}

\item{KeyName}{The name of the key pair. You can create a key pair using
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html}{CreateKeyPair}
or
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html}{ImportKeyPair}.

If you do not specify a key pair, you can't connect to the instance
unless you choose an AMI that is configured to allow users another way
to log in.}

\item{MaxCount}{[required] The maximum number of instances to launch. If you specify more instances
than Amazon EC2 can launch in the target Availability Zone, Amazon EC2
launches the largest possible number of instances above \code{MinCount}.

Constraints: Between 1 and the maximum number you're allowed for the
specified instance type. For more information about the default limits,
and how to request an increase, see \href{https://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2}{How many instances can I run in Amazon EC2}
in the Amazon EC2 FAQ.}

\item{MinCount}{[required] The minimum number of instances to launch. If you specify a minimum that
is more instances than Amazon EC2 can launch in the target Availability
Zone, Amazon EC2 launches no instances.

Constraints: Between 1 and the maximum number you're allowed for the
specified instance type. For more information about the default limits,
and how to request an increase, see \href{https://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2}{How many instances can I run in Amazon EC2}
in the Amazon EC2 General FAQ.}

\item{Monitoring}{Specifies whether detailed monitoring is enabled for the instance.}

\item{Placement}{The placement for the instance.}

\item{RamdiskId}{The ID of the RAM disk to select. Some kernels require additional
drivers at launch. Check the kernel requirements for information about
whether you need to specify a RAM disk. To find kernel requirements, go
to the AWS Resource Center and search for the kernel ID.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html}{PV-GRUB}
in the \emph{Amazon Elastic Compute Cloud User Guide}.}

\item{SecurityGroupIds}{The IDs of the security groups. You can create a security group using
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html}{CreateSecurityGroup}.

If you specify a network interface, you must specify any security groups
as part of the network interface.}

\item{SecurityGroups}{[EC2-Classic, default VPC] The names of the security groups. For a
nondefault VPC, you must use security group IDs instead.

If you specify a network interface, you must specify any security groups
as part of the network interface.

Default: Amazon EC2 uses the default security group.}

\item{SubnetId}{[EC2-VPC] The ID of the subnet to launch the instance into.

If you specify a network interface, you must specify any subnets as part
of the network interface.}

\item{UserData}{The user data to make available to the instance. For more information,
see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html}{Running commands on your Linux instance at launch}
(Linux) and \href{https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data}{Adding User Data}
(Windows). If you are using a command line tool, base64-encoding is
performed for you, and you can load the text from a file. Otherwise, you
must provide base64-encoded text. User data is limited to 16 KB.}

\item{AdditionalInfo}{Reserved.}

\item{ClientToken}{Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If you do not specify a client token, a randomly
generated token is used for the request to ensure idempotency.

For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html}{Ensuring Idempotency}.

Constraints: Maximum 64 ASCII characters}

\item{DisableApiTermination}{If you set this parameter to \code{true}, you can't terminate the instance
using the Amazon EC2 console, CLI, or API; otherwise, you can. To change
this attribute after launch, use
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html}{ModifyInstanceAttribute}.
Alternatively, if you set \code{InstanceInitiatedShutdownBehavior} to
\code{terminate}, you can terminate the instance by running the shutdown
command from the instance.

Default: \code{false}}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{EbsOptimized}{Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal Amazon EBS I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.

Default: \code{false}}

\item{IamInstanceProfile}{The IAM instance profile.}

\item{InstanceInitiatedShutdownBehavior}{Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).

Default: \code{stop}}

\item{NetworkInterfaces}{The network interfaces to associate with the instance. If you specify a
network interface, you must specify any security groups and subnets as
part of the network interface.}

\item{PrivateIpAddress}{[EC2-VPC] The primary IPv4 address. You must specify a value from the
IPv4 address range of the subnet.

Only one private IP address can be designated as primary. You can't
specify this option if you've specified the option to designate a
private IP address as the primary IP address in a network interface
specification. You cannot specify this option if you're launching more
than one instance in the request.

You cannot specify this option and the network interfaces option in the
same request.}

\item{ElasticGpuSpecification}{An elastic GPU to associate with the instance. An Elastic GPU is a GPU
resource that you can attach to your Windows instance to accelerate the
graphics performance of your applications. For more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html}{Amazon EC2 Elastic GPUs}
in the \emph{Amazon Elastic Compute Cloud User Guide}.}

\item{ElasticInferenceAccelerators}{An elastic inference accelerator to associate with the instance. Elastic
inference accelerators are a resource you can attach to your Amazon EC2
instances to accelerate your Deep Learning (DL) inference workloads.

You cannot specify accelerators from different generations in the same
request.}

\item{TagSpecifications}{The tags to apply to the resources during launch. You can only tag
instances and volumes on launch. The specified tags are applied to all
instances or volumes that are created during launch. To tag a resource
after it has been created, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html}{CreateTags}.}

\item{LaunchTemplate}{The launch template to use to launch the instances. Any parameters that
you specify in RunInstances override the same parameters in the launch
template. You can specify either the name or ID of a launch template,
but not both.}

\item{InstanceMarketOptions}{The market (purchasing) option for the instances.

For RunInstances, persistent Spot Instance requests are only supported
when \strong{InstanceInterruptionBehavior} is set to either \code{hibernate} or
\code{stop}.}

\item{CreditSpecification}{The credit option for CPU usage of the burstable performance instance.
Valid values are \code{standard} and \code{unlimited}. To change this attribute
after launch, use
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html}{ModifyInstanceCreditSpecification}.
For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html}{Burstable performance instances}
in the \emph{Amazon Elastic Compute Cloud User Guide}.

Default: \code{standard} (T2 instances) or \code{unlimited} (T3/T3a instances)}

\item{CpuOptions}{The CPU options for the instance. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html}{Optimizing CPU options}
in the \emph{Amazon Elastic Compute Cloud User Guide}.}

\item{CapacityReservationSpecification}{Information about the Capacity Reservation targeting option. If you do
not specify this parameter, the instance's Capacity Reservation
preference defaults to \code{open}, which enables it to run in any open
Capacity Reservation that has matching attributes (instance type,
platform, Availability Zone).}

\item{HibernationOptions}{Indicates whether an instance is enabled for hibernation. For more
information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html}{Hibernate your instance}
in the \emph{Amazon Elastic Compute Cloud User Guide}.

You can't enable hibernation and AWS Nitro Enclaves on the same
instance.}

\item{LicenseSpecifications}{The license configurations.}

\item{MetadataOptions}{The metadata options for the instance. For more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html}{Instance metadata and user data}.}

\item{EnclaveOptions}{Indicates whether the instance is enabled for AWS Nitro Enclaves. For
more information, see \href{https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html}{What is AWS Nitro Enclaves?}
in the \emph{AWS Nitro Enclaves User Guide}.

You can't enable AWS Nitro Enclaves and hibernation on the same
instance.}
}
\description{
Launches the specified number of instances using an AMI for which you
have permissions.

You can specify a number of options, or leave the default options. The
following rules apply:
\itemize{
\item [EC2-VPC] If you don't specify a subnet ID, we choose a default
subnet from your default VPC for you. If you don't have a default
VPC, you must specify a subnet ID in the request.
\item [EC2-Classic] If don't specify an Availability Zone, we choose one
for you.
\item Some instance types must be launched into a VPC. If you do not have
a default VPC, or if you do not specify a subnet ID, the request
fails. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types}{Instance types available only in a VPC}.
\item [EC2-VPC] All instances have a network interface with a primary
private IPv4 address. If you don't specify this address, we choose
one from the IPv4 range of your subnet.
\item Not all instance types support IPv6 addresses. For more information,
see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html}{Instance types}.
\item If you don't specify a security group ID, we use the default
security group. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html}{Security groups}.
\item If any of the AMIs have a product code attached for which the user
has not subscribed, the request fails.
}

You can create a \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html}{launch template},
which is a resource that contains the parameters to launch an instance.
When you launch an instance using RunInstances, you can specify the
launch template instead of specifying the launch parameters.

To ensure faster instance launches, break up large requests into smaller
batches. For example, create five separate launch requests for 100
instances each instead of one launch request for 500 instances.

An instance is ready for you to use when it's in the \code{running} state.
You can check the state of your instance using DescribeInstances. You
can tag instances and EBS volumes during launch, after launch, or both.
For more information, see CreateTags and \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html}{Tagging your Amazon EC2 resources}.

Linux instances have access to the public key of the key pair at boot.
You can use this key to provide secure access to the instance. Amazon
EC2 public images use this feature to provide secure access without
passwords. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html}{Key pairs}
in the \emph{Amazon Elastic Compute Cloud User Guide}.

For troubleshooting, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/troubleshooting-launch.html#troubleshooting-launch-internal}{What to do if an instance immediately terminates},
and \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html}{Troubleshooting connecting to your instance}
in the \emph{Amazon Elastic Compute Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$run_instances(
  BlockDeviceMappings = list(
    list(
      DeviceName = "string",
      VirtualName = "string",
      Ebs = list(
        DeleteOnTermination = TRUE|FALSE,
        Iops = 123,
        SnapshotId = "string",
        VolumeSize = 123,
        VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
        KmsKeyId = "string",
        Throughput = 123,
        Encrypted = TRUE|FALSE
      ),
      NoDevice = "string"
    )
  ),
  ImageId = "string",
  InstanceType = "t1.micro"|"t2.nano"|"t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"t2.xlarge"|"t2.2xlarge"|"t3.nano"|"t3.micro"|"t3.small"|"t3.medium"|"t3.large"|"t3.xlarge"|"t3.2xlarge"|"t3a.nano"|"t3a.micro"|"t3a.small"|"t3a.medium"|"t3a.large"|"t3a.xlarge"|"t3a.2xlarge"|"t4g.nano"|"t4g.micro"|"t4g.small"|"t4g.medium"|"t4g.large"|"t4g.xlarge"|"t4g.2xlarge"|"m1.small"|"m1.medium"|"m1.large"|"m1.xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m4.16xlarge"|"m2.xlarge"|"m2.2xlarge"|"m2.4xlarge"|"cr1.8xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5.metal"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"r5b.large"|"r5b.xlarge"|"r5b.2xlarge"|"r5b.4xlarge"|"r5b.8xlarge"|"r5b.12xlarge"|"r5b.16xlarge"|"r5b.24xlarge"|"r5b.metal"|"r5d.large"|"r5d.xlarge"|"r5d.2xlarge"|"r5d.4xlarge"|"r5d.8xlarge"|"r5d.12xlarge"|"r5d.16xlarge"|"r5d.24xlarge"|"r5d.metal"|"r5ad.large"|"r5ad.xlarge"|"r5ad.2xlarge"|"r5ad.4xlarge"|"r5ad.8xlarge"|"r5ad.12xlarge"|"r5ad.16xlarge"|"r5ad.24xlarge"|"r6g.metal"|"r6g.medium"|"r6g.large"|"r6g.xlarge"|"r6g.2xlarge"|"r6g.4xlarge"|"r6g.8xlarge"|"r6g.12xlarge"|"r6g.16xlarge"|"r6gd.metal"|"r6gd.medium"|"r6gd.large"|"r6gd.xlarge"|"r6gd.2xlarge"|"r6gd.4xlarge"|"r6gd.8xlarge"|"r6gd.12xlarge"|"r6gd.16xlarge"|"x1.16xlarge"|"x1.32xlarge"|"x1e.xlarge"|"x1e.2xlarge"|"x1e.4xlarge"|"x1e.8xlarge"|"x1e.16xlarge"|"x1e.32xlarge"|"i2.xlarge"|"i2.2xlarge"|"i2.4xlarge"|"i2.8xlarge"|"i3.large"|"i3.xlarge"|"i3.2xlarge"|"i3.4xlarge"|"i3.8xlarge"|"i3.16xlarge"|"i3.metal"|"i3en.large"|"i3en.xlarge"|"i3en.2xlarge"|"i3en.3xlarge"|"i3en.6xlarge"|"i3en.12xlarge"|"i3en.24xlarge"|"i3en.metal"|"hi1.4xlarge"|"hs1.8xlarge"|"c1.medium"|"c1.xlarge"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5.metal"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"c5ad.large"|"c5ad.xlarge"|"c5ad.2xlarge"|"c5ad.4xlarge"|"c5ad.8xlarge"|"c5ad.12xlarge"|"c5ad.16xlarge"|"c5ad.24xlarge"|"c5d.large"|"c5d.xlarge"|"c5d.2xlarge"|"c5d.4xlarge"|"c5d.9xlarge"|"c5d.12xlarge"|"c5d.18xlarge"|"c5d.24xlarge"|"c5d.metal"|"c5n.large"|"c5n.xlarge"|"c5n.2xlarge"|"c5n.4xlarge"|"c5n.9xlarge"|"c5n.18xlarge"|"c5n.metal"|"c6g.metal"|"c6g.medium"|"c6g.large"|"c6g.xlarge"|"c6g.2xlarge"|"c6g.4xlarge"|"c6g.8xlarge"|"c6g.12xlarge"|"c6g.16xlarge"|"c6gd.metal"|"c6gd.medium"|"c6gd.large"|"c6gd.xlarge"|"c6gd.2xlarge"|"c6gd.4xlarge"|"c6gd.8xlarge"|"c6gd.12xlarge"|"c6gd.16xlarge"|"c6gn.medium"|"c6gn.large"|"c6gn.xlarge"|"c6gn.2xlarge"|"c6gn.4xlarge"|"c6gn.8xlarge"|"c6gn.12xlarge"|"c6gn.16xlarge"|"cc1.4xlarge"|"cc2.8xlarge"|"g2.2xlarge"|"g2.8xlarge"|"g3.4xlarge"|"g3.8xlarge"|"g3.16xlarge"|"g3s.xlarge"|"g4ad.4xlarge"|"g4ad.8xlarge"|"g4ad.16xlarge"|"g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g4dn.metal"|"cg1.4xlarge"|"p2.xlarge"|"p2.8xlarge"|"p2.16xlarge"|"p3.2xlarge"|"p3.8xlarge"|"p3.16xlarge"|"p3dn.24xlarge"|"p4d.24xlarge"|"d2.xlarge"|"d2.2xlarge"|"d2.4xlarge"|"d2.8xlarge"|"d3.xlarge"|"d3.2xlarge"|"d3.4xlarge"|"d3.8xlarge"|"d3en.xlarge"|"d3en.2xlarge"|"d3en.4xlarge"|"d3en.6xlarge"|"d3en.8xlarge"|"d3en.12xlarge"|"f1.2xlarge"|"f1.4xlarge"|"f1.16xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5.metal"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge"|"m5d.large"|"m5d.xlarge"|"m5d.2xlarge"|"m5d.4xlarge"|"m5d.8xlarge"|"m5d.12xlarge"|"m5d.16xlarge"|"m5d.24xlarge"|"m5d.metal"|"m5ad.large"|"m5ad.xlarge"|"m5ad.2xlarge"|"m5ad.4xlarge"|"m5ad.8xlarge"|"m5ad.12xlarge"|"m5ad.16xlarge"|"m5ad.24xlarge"|"m5zn.large"|"m5zn.xlarge"|"m5zn.2xlarge"|"m5zn.3xlarge"|"m5zn.6xlarge"|"m5zn.12xlarge"|"m5zn.metal"|"h1.2xlarge"|"h1.4xlarge"|"h1.8xlarge"|"h1.16xlarge"|"z1d.large"|"z1d.xlarge"|"z1d.2xlarge"|"z1d.3xlarge"|"z1d.6xlarge"|"z1d.12xlarge"|"z1d.metal"|"u-6tb1.metal"|"u-9tb1.metal"|"u-12tb1.metal"|"u-18tb1.metal"|"u-24tb1.metal"|"a1.medium"|"a1.large"|"a1.xlarge"|"a1.2xlarge"|"a1.4xlarge"|"a1.metal"|"m5dn.large"|"m5dn.xlarge"|"m5dn.2xlarge"|"m5dn.4xlarge"|"m5dn.8xlarge"|"m5dn.12xlarge"|"m5dn.16xlarge"|"m5dn.24xlarge"|"m5n.large"|"m5n.xlarge"|"m5n.2xlarge"|"m5n.4xlarge"|"m5n.8xlarge"|"m5n.12xlarge"|"m5n.16xlarge"|"m5n.24xlarge"|"r5dn.large"|"r5dn.xlarge"|"r5dn.2xlarge"|"r5dn.4xlarge"|"r5dn.8xlarge"|"r5dn.12xlarge"|"r5dn.16xlarge"|"r5dn.24xlarge"|"r5n.large"|"r5n.xlarge"|"r5n.2xlarge"|"r5n.4xlarge"|"r5n.8xlarge"|"r5n.12xlarge"|"r5n.16xlarge"|"r5n.24xlarge"|"inf1.xlarge"|"inf1.2xlarge"|"inf1.6xlarge"|"inf1.24xlarge"|"m6g.metal"|"m6g.medium"|"m6g.large"|"m6g.xlarge"|"m6g.2xlarge"|"m6g.4xlarge"|"m6g.8xlarge"|"m6g.12xlarge"|"m6g.16xlarge"|"m6gd.metal"|"m6gd.medium"|"m6gd.large"|"m6gd.xlarge"|"m6gd.2xlarge"|"m6gd.4xlarge"|"m6gd.8xlarge"|"m6gd.12xlarge"|"m6gd.16xlarge"|"mac1.metal",
  Ipv6AddressCount = 123,
  Ipv6Addresses = list(
    list(
      Ipv6Address = "string"
    )
  ),
  KernelId = "string",
  KeyName = "string",
  MaxCount = 123,
  MinCount = 123,
  Monitoring = list(
    Enabled = TRUE|FALSE
  ),
  Placement = list(
    AvailabilityZone = "string",
    Affinity = "string",
    GroupName = "string",
    PartitionNumber = 123,
    HostId = "string",
    Tenancy = "default"|"dedicated"|"host",
    SpreadDomain = "string",
    HostResourceGroupArn = "string"
  ),
  RamdiskId = "string",
  SecurityGroupIds = list(
    "string"
  ),
  SecurityGroups = list(
    "string"
  ),
  SubnetId = "string",
  UserData = "string",
  AdditionalInfo = "string",
  ClientToken = "string",
  DisableApiTermination = TRUE|FALSE,
  DryRun = TRUE|FALSE,
  EbsOptimized = TRUE|FALSE,
  IamInstanceProfile = list(
    Arn = "string",
    Name = "string"
  ),
  InstanceInitiatedShutdownBehavior = "stop"|"terminate",
  NetworkInterfaces = list(
    list(
      AssociatePublicIpAddress = TRUE|FALSE,
      DeleteOnTermination = TRUE|FALSE,
      Description = "string",
      DeviceIndex = 123,
      Groups = list(
        "string"
      ),
      Ipv6AddressCount = 123,
      Ipv6Addresses = list(
        list(
          Ipv6Address = "string"
        )
      ),
      NetworkInterfaceId = "string",
      PrivateIpAddress = "string",
      PrivateIpAddresses = list(
        list(
          Primary = TRUE|FALSE,
          PrivateIpAddress = "string"
        )
      ),
      SecondaryPrivateIpAddressCount = 123,
      SubnetId = "string",
      AssociateCarrierIpAddress = TRUE|FALSE,
      InterfaceType = "string",
      NetworkCardIndex = 123
    )
  ),
  PrivateIpAddress = "string",
  ElasticGpuSpecification = list(
    list(
      Type = "string"
    )
  ),
  ElasticInferenceAccelerators = list(
    list(
      Type = "string",
      Count = 123
    )
  ),
  TagSpecifications = list(
    list(
      ResourceType = "client-vpn-endpoint"|"customer-gateway"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"internet-gateway"|"key-pair"|"launch-template"|"local-gateway-route-table-vpc-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"placement-group"|"reserved-instances"|"route-table"|"security-group"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-route-table"|"volume"|"vpc"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  ),
  LaunchTemplate = list(
    LaunchTemplateId = "string",
    LaunchTemplateName = "string",
    Version = "string"
  ),
  InstanceMarketOptions = list(
    MarketType = "spot",
    SpotOptions = list(
      MaxPrice = "string",
      SpotInstanceType = "one-time"|"persistent",
      BlockDurationMinutes = 123,
      ValidUntil = as.POSIXct(
        "2015-01-01"
      ),
      InstanceInterruptionBehavior = "hibernate"|"stop"|"terminate"
    )
  ),
  CreditSpecification = list(
    CpuCredits = "string"
  ),
  CpuOptions = list(
    CoreCount = 123,
    ThreadsPerCore = 123
  ),
  CapacityReservationSpecification = list(
    CapacityReservationPreference = "open"|"none",
    CapacityReservationTarget = list(
      CapacityReservationId = "string",
      CapacityReservationResourceGroupArn = "string"
    )
  ),
  HibernationOptions = list(
    Configured = TRUE|FALSE
  ),
  LicenseSpecifications = list(
    list(
      LicenseConfigurationArn = "string"
    )
  ),
  MetadataOptions = list(
    HttpTokens = "optional"|"required",
    HttpPutResponseHopLimit = 123,
    HttpEndpoint = "disabled"|"enabled"
  ),
  EnclaveOptions = list(
    Enabled = TRUE|FALSE
  )
)
}
}

\examples{
\dontrun{
# This example launches an instance using the specified AMI, instance
# type, security group, subnet, block device mapping, and tags.
svc$run_instances(
  BlockDeviceMappings = list(
    list(
      DeviceName = "/dev/sdh",
      Ebs = list(
        VolumeSize = 100L
      )
    )
  ),
  ImageId = "ami-abc12345",
  InstanceType = "t2.micro",
  KeyName = "my-key-pair",
  MaxCount = 1L,
  MinCount = 1L,
  SecurityGroupIds = list(
    "sg-1a2b3c4d"
  ),
  SubnetId = "subnet-6e7f829e",
  TagSpecifications = list(
    list(
      ResourceType = "instance",
      Tags = list(
        list(
          Key = "Purpose",
          Value = "test"
        )
      )
    )
  )
)
}

}
\keyword{internal}
