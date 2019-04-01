% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kafka_operations.R
\name{kafka_create_cluster}
\alias{kafka_create_cluster}
\title{Creates a new MSK cluster}
\usage{
kafka_create_cluster(BrokerNodeGroupInfo, ClusterName, EncryptionInfo,
  EnhancedMonitoring, KafkaVersion, NumberOfBrokerNodes)
}
\arguments{
\item{BrokerNodeGroupInfo}{[required] Information about the broker nodes in the cluster.}

\item{ClusterName}{[required] The name of the cluster.}

\item{EncryptionInfo}{Includes all encryption-related information.}

\item{EnhancedMonitoring}{Specifies the level of monitoring for the MSK cluster. The possible
values are DEFAULT, PER\_BROKER, and PER\_TOPIC\_PER\_BROKER.}

\item{KafkaVersion}{[required] The version of Apache Kafka.}

\item{NumberOfBrokerNodes}{[required] The number of Kafka broker nodes in the Amazon MSK cluster.}
}
\description{
Creates a new MSK cluster.
}
\section{Request syntax}{
\preformatted{kafka$create_cluster(
  BrokerNodeGroupInfo = list(
    BrokerAZDistribution = "DEFAULT",
    ClientSubnets = list(
      "string"
    ),
    InstanceType = "string",
    SecurityGroups = list(
      "string"
    ),
    StorageInfo = list(
      EbsStorageInfo = list(
        VolumeSize = 123
      )
    )
  ),
  ClusterName = "string",
  EncryptionInfo = list(
    EncryptionAtRest = list(
      DataVolumeKMSKeyId = "string"
    )
  ),
  EnhancedMonitoring = "DEFAULT"|"PER_BROKER"|"PER_TOPIC_PER_BROKER",
  KafkaVersion = "string",
  NumberOfBrokerNodes = 123
)
}
}

\keyword{internal}