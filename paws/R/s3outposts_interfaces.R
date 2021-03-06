# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common populate
#' @include s3outposts_service.R
NULL

.s3outposts$create_endpoint_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(OutpostId = structure(logical(0), tags = list(type = "string")), SubnetId = structure(logical(0), tags = list(type = "string")), SecurityGroupId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3outposts$create_endpoint_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(EndpointArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3outposts$delete_endpoint_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(EndpointId = structure(logical(0), tags = list(location = "querystring", locationName = "endpointId", type = "string")), OutpostId = structure(logical(0), tags = list(location = "querystring", locationName = "outpostId", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3outposts$delete_endpoint_output <- function(...) {
  list()
}

.s3outposts$list_endpoints_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(NextToken = structure(logical(0), tags = list(location = "querystring", locationName = "nextToken", type = "string")), MaxResults = structure(logical(0), tags = list(location = "querystring", locationName = "maxResults", type = "integer"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3outposts$list_endpoints_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Endpoints = structure(list(structure(list(EndpointArn = structure(logical(0), tags = list(type = "string")), OutpostsId = structure(logical(0), tags = list(type = "string")), CidrBlock = structure(logical(0), tags = list(type = "string")), Status = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), NetworkInterfaces = structure(list(structure(list(NetworkInterfaceId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}
