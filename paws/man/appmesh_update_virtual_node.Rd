% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appmesh_operations.R
\name{appmesh_update_virtual_node}
\alias{appmesh_update_virtual_node}
\title{Updates an existing virtual node in a specified service mesh}
\usage{
appmesh_update_virtual_node(clientToken, meshName, meshOwner, spec,
  virtualNodeName)
}
\arguments{
\item{clientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.}

\item{meshName}{[required] The name of the service mesh that the virtual node resides in.}

\item{meshOwner}{The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then it's the ID of the account that shared the mesh with
your account. For more information about mesh sharing, see \href{https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html}{Working with shared meshes}.}

\item{spec}{[required] The new virtual node specification to apply. This overwrites the
existing data.}

\item{virtualNodeName}{[required] The name of the virtual node to update.}
}
\description{
Updates an existing virtual node in a specified service mesh.
}
\section{Request syntax}{
\preformatted{svc$update_virtual_node(
  clientToken = "string",
  meshName = "string",
  meshOwner = "string",
  spec = list(
    backendDefaults = list(
      clientPolicy = list(
        tls = list(
          enforce = TRUE|FALSE,
          ports = list(
            123
          ),
          validation = list(
            trust = list(
              acm = list(
                certificateAuthorityArns = list(
                  "string"
                )
              ),
              file = list(
                certificateChain = "string"
              )
            )
          )
        )
      )
    ),
    backends = list(
      list(
        virtualService = list(
          clientPolicy = list(
            tls = list(
              enforce = TRUE|FALSE,
              ports = list(
                123
              ),
              validation = list(
                trust = list(
                  acm = list(
                    certificateAuthorityArns = list(
                      "string"
                    )
                  ),
                  file = list(
                    certificateChain = "string"
                  )
                )
              )
            )
          ),
          virtualServiceName = "string"
        )
      )
    ),
    listeners = list(
      list(
        connectionPool = list(
          grpc = list(
            maxRequests = 123
          ),
          http = list(
            maxConnections = 123,
            maxPendingRequests = 123
          ),
          http2 = list(
            maxRequests = 123
          ),
          tcp = list(
            maxConnections = 123
          )
        ),
        healthCheck = list(
          healthyThreshold = 123,
          intervalMillis = 123,
          path = "string",
          port = 123,
          protocol = "http"|"tcp"|"http2"|"grpc",
          timeoutMillis = 123,
          unhealthyThreshold = 123
        ),
        outlierDetection = list(
          baseEjectionDuration = list(
            unit = "s"|"ms",
            value = 123
          ),
          interval = list(
            unit = "s"|"ms",
            value = 123
          ),
          maxEjectionPercent = 123,
          maxServerErrors = 123
        ),
        portMapping = list(
          port = 123,
          protocol = "http"|"tcp"|"http2"|"grpc"
        ),
        timeout = list(
          grpc = list(
            idle = list(
              unit = "s"|"ms",
              value = 123
            ),
            perRequest = list(
              unit = "s"|"ms",
              value = 123
            )
          ),
          http = list(
            idle = list(
              unit = "s"|"ms",
              value = 123
            ),
            perRequest = list(
              unit = "s"|"ms",
              value = 123
            )
          ),
          http2 = list(
            idle = list(
              unit = "s"|"ms",
              value = 123
            ),
            perRequest = list(
              unit = "s"|"ms",
              value = 123
            )
          ),
          tcp = list(
            idle = list(
              unit = "s"|"ms",
              value = 123
            )
          )
        ),
        tls = list(
          certificate = list(
            acm = list(
              certificateArn = "string"
            ),
            file = list(
              certificateChain = "string",
              privateKey = "string"
            )
          ),
          mode = "STRICT"|"PERMISSIVE"|"DISABLED"
        )
      )
    ),
    logging = list(
      accessLog = list(
        file = list(
          path = "string"
        )
      )
    ),
    serviceDiscovery = list(
      awsCloudMap = list(
        attributes = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        namespaceName = "string",
        serviceName = "string"
      ),
      dns = list(
        hostname = "string"
      )
    )
  ),
  virtualNodeName = "string"
)
}
}

\keyword{internal}
