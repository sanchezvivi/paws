# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include devopsguru_service.R
NULL

#' Adds a notification channel to DevOps Guru
#'
#' @description
#' Adds a notification channel to DevOps Guru. A notification channel is
#' used to notify you about important DevOps Guru events, such as when an
#' insight is generated.
#' 
#' If you use an Amazon SNS topic in another account, you must attach a
#' policy to it that grants DevOps Guru permission to it notifications.
#' DevOps Guru adds the required policy on your behalf to send
#' notifications using Amazon SNS in your account. For more information,
#' see [Permissions for cross account Amazon SNS
#' topics](https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html).
#' 
#' If you use an Amazon SNS topic that is encrypted by an AWS Key
#' Management Service customer-managed key (CMK), then you must add
#' permissions to the CMK. For more information, see [Permissions for AWS
#' KMS–encrypted Amazon SNS
#' topics](https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html).
#'
#' @usage
#' devopsguru_add_notification_channel(Config)
#'
#' @param Config &#91;required&#93; A `NotificationChannelConfig` object that specifies what type of
#' notification channel to add. The one supported notification channel is
#' Amazon Simple Notification Service (Amazon SNS).
#'
#' @section Request syntax:
#' ```
#' svc$add_notification_channel(
#'   Config = list(
#'     Sns = list(
#'       TopicArn = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_add_notification_channel
devopsguru_add_notification_channel <- function(Config) {
  op <- new_operation(
    name = "AddNotificationChannel",
    http_method = "PUT",
    http_path = "/channels",
    paginator = list()
  )
  input <- .devopsguru$add_notification_channel_input(Config = Config)
  output <- .devopsguru$add_notification_channel_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$add_notification_channel <- devopsguru_add_notification_channel

#' Returns the number of open reactive insights, the number of open
#' proactive insights, and the number of metrics analyzed in your AWS
#' account
#'
#' @description
#' Returns the number of open reactive insights, the number of open
#' proactive insights, and the number of metrics analyzed in your AWS
#' account. Use these numbers to gauge the health of operations in your AWS
#' account.
#'
#' @usage
#' devopsguru_describe_account_health()
#'
#' @section Request syntax:
#' ```
#' svc$describe_account_health()
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_describe_account_health
devopsguru_describe_account_health <- function() {
  op <- new_operation(
    name = "DescribeAccountHealth",
    http_method = "GET",
    http_path = "/accounts/health",
    paginator = list()
  )
  input <- .devopsguru$describe_account_health_input()
  output <- .devopsguru$describe_account_health_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$describe_account_health <- devopsguru_describe_account_health

#' For the time range passed in, returns the number of open reactive
#' insight that were created, the number of open proactive insights that
#' were created, and the Mean Time to Recover (MTTR) for all closed
#' reactive insights
#'
#' @description
#' For the time range passed in, returns the number of open reactive
#' insight that were created, the number of open proactive insights that
#' were created, and the Mean Time to Recover (MTTR) for all closed
#' reactive insights.
#'
#' @usage
#' devopsguru_describe_account_overview(FromTime, ToTime)
#'
#' @param FromTime &#91;required&#93; The start of the time range passed in. The start time granularity is at
#' the day level. The floor of the start time is used. Returned information
#' occurred after this day.
#' @param ToTime The end of the time range passed in. The start time granularity is at
#' the day level. The floor of the start time is used. Returned information
#' occurred before this day. If this is not specified, then the current day
#' is used.
#'
#' @section Request syntax:
#' ```
#' svc$describe_account_overview(
#'   FromTime = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   ToTime = as.POSIXct(
#'     "2015-01-01"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_describe_account_overview
devopsguru_describe_account_overview <- function(FromTime, ToTime = NULL) {
  op <- new_operation(
    name = "DescribeAccountOverview",
    http_method = "POST",
    http_path = "/accounts/overview",
    paginator = list()
  )
  input <- .devopsguru$describe_account_overview_input(FromTime = FromTime, ToTime = ToTime)
  output <- .devopsguru$describe_account_overview_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$describe_account_overview <- devopsguru_describe_account_overview

#' Returns details about an anomaly that you specify using its ID
#'
#' @description
#' Returns details about an anomaly that you specify using its ID.
#'
#' @usage
#' devopsguru_describe_anomaly(Id)
#'
#' @param Id &#91;required&#93; The ID of the anomaly.
#'
#' @section Request syntax:
#' ```
#' svc$describe_anomaly(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_describe_anomaly
devopsguru_describe_anomaly <- function(Id) {
  op <- new_operation(
    name = "DescribeAnomaly",
    http_method = "GET",
    http_path = "/anomalies/{Id}",
    paginator = list()
  )
  input <- .devopsguru$describe_anomaly_input(Id = Id)
  output <- .devopsguru$describe_anomaly_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$describe_anomaly <- devopsguru_describe_anomaly

#' Returns details about an insight that you specify using its ID
#'
#' @description
#' Returns details about an insight that you specify using its ID.
#'
#' @usage
#' devopsguru_describe_insight(Id)
#'
#' @param Id &#91;required&#93; The ID of the insight.
#'
#' @section Request syntax:
#' ```
#' svc$describe_insight(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_describe_insight
devopsguru_describe_insight <- function(Id) {
  op <- new_operation(
    name = "DescribeInsight",
    http_method = "GET",
    http_path = "/insights/{Id}",
    paginator = list()
  )
  input <- .devopsguru$describe_insight_input(Id = Id)
  output <- .devopsguru$describe_insight_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$describe_insight <- devopsguru_describe_insight

#' Returns the number of open proactive insights, open reactive insights,
#' and the Mean Time to Recover (MTTR) for all closed insights in resource
#' collections in your account
#'
#' @description
#' Returns the number of open proactive insights, open reactive insights,
#' and the Mean Time to Recover (MTTR) for all closed insights in resource
#' collections in your account. You specify the type of AWS resources
#' collection. The one type of AWS resource collection supported is AWS
#' CloudFormation stacks. DevOps Guru can be configured to analyze only the
#' AWS resources that are defined in the stacks.
#'
#' @usage
#' devopsguru_describe_resource_collection_health(ResourceCollectionType,
#'   NextToken)
#'
#' @param ResourceCollectionType &#91;required&#93; An AWS resource collection type. This type specifies how analyzed AWS
#' resources are defined. The one type of AWS resource collection supported
#' is AWS CloudFormation stacks. DevOps Guru can be configured to analyze
#' only the AWS resources that are defined in the stacks.
#' @param NextToken The pagination token to use to retrieve the next page of results for
#' this operation. If this value is null, it retrieves the first page.
#'
#' @section Request syntax:
#' ```
#' svc$describe_resource_collection_health(
#'   ResourceCollectionType = "AWS_CLOUD_FORMATION",
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_describe_resource_collection_health
devopsguru_describe_resource_collection_health <- function(ResourceCollectionType, NextToken = NULL) {
  op <- new_operation(
    name = "DescribeResourceCollectionHealth",
    http_method = "GET",
    http_path = "/accounts/health/resource-collection/{ResourceCollectionType}",
    paginator = list()
  )
  input <- .devopsguru$describe_resource_collection_health_input(ResourceCollectionType = ResourceCollectionType, NextToken = NextToken)
  output <- .devopsguru$describe_resource_collection_health_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$describe_resource_collection_health <- devopsguru_describe_resource_collection_health

#' Returns the integration status of services that are integrated with
#' DevOps Guru
#'
#' @description
#' Returns the integration status of services that are integrated with
#' DevOps Guru. The one service that can be integrated with DevOps Guru is
#' AWS Systems Manager, which can be used to create an OpsItem for each
#' generated insight.
#'
#' @usage
#' devopsguru_describe_service_integration()
#'
#' @section Request syntax:
#' ```
#' svc$describe_service_integration()
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_describe_service_integration
devopsguru_describe_service_integration <- function() {
  op <- new_operation(
    name = "DescribeServiceIntegration",
    http_method = "GET",
    http_path = "/service-integrations",
    paginator = list()
  )
  input <- .devopsguru$describe_service_integration_input()
  output <- .devopsguru$describe_service_integration_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$describe_service_integration <- devopsguru_describe_service_integration

#' Returns lists AWS resources that are of the specified resource
#' collection type
#'
#' @description
#' Returns lists AWS resources that are of the specified resource
#' collection type. The one type of AWS resource collection supported is
#' AWS CloudFormation stacks. DevOps Guru can be configured to analyze only
#' the AWS resources that are defined in the stacks.
#'
#' @usage
#' devopsguru_get_resource_collection(ResourceCollectionType, NextToken)
#'
#' @param ResourceCollectionType &#91;required&#93; The type of AWS resource collections to return. The one valid value is
#' `CLOUD_FORMATION` for AWS CloudFormation stacks.
#' @param NextToken The pagination token to use to retrieve the next page of results for
#' this operation. If this value is null, it retrieves the first page.
#'
#' @section Request syntax:
#' ```
#' svc$get_resource_collection(
#'   ResourceCollectionType = "AWS_CLOUD_FORMATION",
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_get_resource_collection
devopsguru_get_resource_collection <- function(ResourceCollectionType, NextToken = NULL) {
  op <- new_operation(
    name = "GetResourceCollection",
    http_method = "GET",
    http_path = "/resource-collections/{ResourceCollectionType}",
    paginator = list()
  )
  input <- .devopsguru$get_resource_collection_input(ResourceCollectionType = ResourceCollectionType, NextToken = NextToken)
  output <- .devopsguru$get_resource_collection_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$get_resource_collection <- devopsguru_get_resource_collection

#' Returns a list of the anomalies that belong to an insight that you
#' specify using its ID
#'
#' @description
#' Returns a list of the anomalies that belong to an insight that you
#' specify using its ID.
#'
#' @usage
#' devopsguru_list_anomalies_for_insight(InsightId, StartTimeRange,
#'   MaxResults, NextToken)
#'
#' @param InsightId &#91;required&#93; The ID of the insight. The returned anomalies belong to this insight.
#' @param StartTimeRange A time range used to specify when the requested anomalies started. All
#' returned anomalies started during this time range.
#' @param MaxResults The maximum number of results to return with a single call. To retrieve
#' the remaining results, make another call with the returned `nextToken`
#' value.
#' @param NextToken The pagination token to use to retrieve the next page of results for
#' this operation. If this value is null, it retrieves the first page.
#'
#' @section Request syntax:
#' ```
#' svc$list_anomalies_for_insight(
#'   InsightId = "string",
#'   StartTimeRange = list(
#'     FromTime = as.POSIXct(
#'       "2015-01-01"
#'     ),
#'     ToTime = as.POSIXct(
#'       "2015-01-01"
#'     )
#'   ),
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_list_anomalies_for_insight
devopsguru_list_anomalies_for_insight <- function(InsightId, StartTimeRange = NULL, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListAnomaliesForInsight",
    http_method = "POST",
    http_path = "/anomalies/insight/{InsightId}",
    paginator = list()
  )
  input <- .devopsguru$list_anomalies_for_insight_input(InsightId = InsightId, StartTimeRange = StartTimeRange, MaxResults = MaxResults, NextToken = NextToken)
  output <- .devopsguru$list_anomalies_for_insight_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$list_anomalies_for_insight <- devopsguru_list_anomalies_for_insight

#' Returns a list of the events emitted by the resources that are evaluated
#' by DevOps Guru
#'
#' @description
#' Returns a list of the events emitted by the resources that are evaluated
#' by DevOps Guru. You can use filters to specify which events are
#' returned.
#'
#' @usage
#' devopsguru_list_events(Filters, MaxResults, NextToken)
#'
#' @param Filters &#91;required&#93; A `ListEventsFilters` object used to specify which events to return.
#' @param MaxResults The maximum number of results to return with a single call. To retrieve
#' the remaining results, make another call with the returned `nextToken`
#' value.
#' @param NextToken The pagination token to use to retrieve the next page of results for
#' this operation. If this value is null, it retrieves the first page.
#'
#' @section Request syntax:
#' ```
#' svc$list_events(
#'   Filters = list(
#'     InsightId = "string",
#'     EventTimeRange = list(
#'       FromTime = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       ToTime = as.POSIXct(
#'         "2015-01-01"
#'       )
#'     ),
#'     EventClass = "INFRASTRUCTURE"|"DEPLOYMENT"|"SECURITY_CHANGE"|"CONFIG_CHANGE"|"SCHEMA_CHANGE",
#'     EventSource = "string",
#'     DataSource = "AWS_CLOUD_TRAIL"|"AWS_CODE_DEPLOY",
#'     ResourceCollection = list(
#'       CloudFormation = list(
#'         StackNames = list(
#'           "string"
#'         )
#'       )
#'     )
#'   ),
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_list_events
devopsguru_list_events <- function(Filters, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListEvents",
    http_method = "POST",
    http_path = "/events",
    paginator = list()
  )
  input <- .devopsguru$list_events_input(Filters = Filters, MaxResults = MaxResults, NextToken = NextToken)
  output <- .devopsguru$list_events_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$list_events <- devopsguru_list_events

#' Returns a list of insights in your AWS account
#'
#' @description
#' Returns a list of insights in your AWS account. You can specify which
#' insights are returned by their start time and status (`ONGOING`,
#' `CLOSED`, or `ANY`).
#'
#' @usage
#' devopsguru_list_insights(StatusFilter, MaxResults, NextToken)
#'
#' @param StatusFilter &#91;required&#93; A filter used to filter the returned insights by their status. You can
#' specify one status filter.
#' @param MaxResults The maximum number of results to return with a single call. To retrieve
#' the remaining results, make another call with the returned `nextToken`
#' value.
#' @param NextToken The pagination token to use to retrieve the next page of results for
#' this operation. If this value is null, it retrieves the first page.
#'
#' @section Request syntax:
#' ```
#' svc$list_insights(
#'   StatusFilter = list(
#'     Ongoing = list(
#'       Type = "REACTIVE"|"PROACTIVE"
#'     ),
#'     Closed = list(
#'       Type = "REACTIVE"|"PROACTIVE",
#'       EndTimeRange = list(
#'         FromTime = as.POSIXct(
#'           "2015-01-01"
#'         ),
#'         ToTime = as.POSIXct(
#'           "2015-01-01"
#'         )
#'       )
#'     ),
#'     Any = list(
#'       Type = "REACTIVE"|"PROACTIVE",
#'       StartTimeRange = list(
#'         FromTime = as.POSIXct(
#'           "2015-01-01"
#'         ),
#'         ToTime = as.POSIXct(
#'           "2015-01-01"
#'         )
#'       )
#'     )
#'   ),
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_list_insights
devopsguru_list_insights <- function(StatusFilter, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListInsights",
    http_method = "POST",
    http_path = "/insights",
    paginator = list()
  )
  input <- .devopsguru$list_insights_input(StatusFilter = StatusFilter, MaxResults = MaxResults, NextToken = NextToken)
  output <- .devopsguru$list_insights_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$list_insights <- devopsguru_list_insights

#' Returns a list of notification channels configured for DevOps Guru
#'
#' @description
#' Returns a list of notification channels configured for DevOps Guru. Each
#' notification channel is used to notify you when DevOps Guru generates an
#' insight that contains information about how to improve your operations.
#' The one supported notification channel is Amazon Simple Notification
#' Service (Amazon SNS).
#'
#' @usage
#' devopsguru_list_notification_channels(NextToken)
#'
#' @param NextToken The pagination token to use to retrieve the next page of results for
#' this operation. If this value is null, it retrieves the first page.
#'
#' @section Request syntax:
#' ```
#' svc$list_notification_channels(
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_list_notification_channels
devopsguru_list_notification_channels <- function(NextToken = NULL) {
  op <- new_operation(
    name = "ListNotificationChannels",
    http_method = "POST",
    http_path = "/channels",
    paginator = list()
  )
  input <- .devopsguru$list_notification_channels_input(NextToken = NextToken)
  output <- .devopsguru$list_notification_channels_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$list_notification_channels <- devopsguru_list_notification_channels

#' Returns a list of a specified insight's recommendations
#'
#' @description
#' Returns a list of a specified insight's recommendations. Each
#' recommendation includes a list of related metrics and a list of related
#' events.
#'
#' @usage
#' devopsguru_list_recommendations(InsightId, NextToken)
#'
#' @param InsightId &#91;required&#93; The ID of the requested insight.
#' @param NextToken The pagination token to use to retrieve the next page of results for
#' this operation. If this value is null, it retrieves the first page.
#'
#' @section Request syntax:
#' ```
#' svc$list_recommendations(
#'   InsightId = "string",
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_list_recommendations
devopsguru_list_recommendations <- function(InsightId, NextToken = NULL) {
  op <- new_operation(
    name = "ListRecommendations",
    http_method = "POST",
    http_path = "/recommendations",
    paginator = list()
  )
  input <- .devopsguru$list_recommendations_input(InsightId = InsightId, NextToken = NextToken)
  output <- .devopsguru$list_recommendations_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$list_recommendations <- devopsguru_list_recommendations

#' Collects customer feedback about the specified insight
#'
#' @description
#' Collects customer feedback about the specified insight.
#'
#' @usage
#' devopsguru_put_feedback(InsightFeedback)
#'
#' @param InsightFeedback The feedback from customers is about the recommendations in this
#' insight.
#'
#' @section Request syntax:
#' ```
#' svc$put_feedback(
#'   InsightFeedback = list(
#'     Id = "string",
#'     Feedback = "VALID_COLLECTION"|"RECOMMENDATION_USEFUL"|"ALERT_TOO_SENSITIVE"|"DATA_NOISY_ANOMALY"|"DATA_INCORRECT"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_put_feedback
devopsguru_put_feedback <- function(InsightFeedback = NULL) {
  op <- new_operation(
    name = "PutFeedback",
    http_method = "PUT",
    http_path = "/feedback",
    paginator = list()
  )
  input <- .devopsguru$put_feedback_input(InsightFeedback = InsightFeedback)
  output <- .devopsguru$put_feedback_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$put_feedback <- devopsguru_put_feedback

#' Removes a notification channel from DevOps Guru
#'
#' @description
#' Removes a notification channel from DevOps Guru. A notification channel
#' is used to notify you when DevOps Guru generates an insight that
#' contains information about how to improve your operations.
#'
#' @usage
#' devopsguru_remove_notification_channel(Id)
#'
#' @param Id &#91;required&#93; The ID of the notification channel to be removed.
#'
#' @section Request syntax:
#' ```
#' svc$remove_notification_channel(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_remove_notification_channel
devopsguru_remove_notification_channel <- function(Id) {
  op <- new_operation(
    name = "RemoveNotificationChannel",
    http_method = "DELETE",
    http_path = "/channels/{Id}",
    paginator = list()
  )
  input <- .devopsguru$remove_notification_channel_input(Id = Id)
  output <- .devopsguru$remove_notification_channel_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$remove_notification_channel <- devopsguru_remove_notification_channel

#' Returns a list of insights in your AWS account
#'
#' @description
#' Returns a list of insights in your AWS account. You can specify which
#' insights are returned by their start time, one or more statuses
#' (`ONGOING`, `CLOSED`, and `CLOSED`), one or more severities (`LOW`,
#' `MEDIUM`, and `HIGH`), and type (`REACTIVE` or `PROACTIVE`).
#' 
#' Use the `Filters` parameter to specify status and severity search
#' parameters. Use the `Type` parameter to specify `REACTIVE` or
#' `PROACTIVE` in your search.
#'
#' @usage
#' devopsguru_search_insights(StartTimeRange, Filters, MaxResults,
#'   NextToken, Type)
#'
#' @param StartTimeRange &#91;required&#93; The start of the time range passed in. Returned insights occurred after
#' this time.
#' @param Filters A `SearchInsightsFilters` object that is used to set the severity and
#' status filters on your insight search.
#' @param MaxResults The maximum number of results to return with a single call. To retrieve
#' the remaining results, make another call with the returned `nextToken`
#' value.
#' @param NextToken The pagination token to use to retrieve the next page of results for
#' this operation. If this value is null, it retrieves the first page.
#' @param Type &#91;required&#93; The type of insights you are searching for (`REACTIVE` or `PROACTIVE`).
#'
#' @section Request syntax:
#' ```
#' svc$search_insights(
#'   StartTimeRange = list(
#'     FromTime = as.POSIXct(
#'       "2015-01-01"
#'     ),
#'     ToTime = as.POSIXct(
#'       "2015-01-01"
#'     )
#'   ),
#'   Filters = list(
#'     Severities = list(
#'       "LOW"|"MEDIUM"|"HIGH"
#'     ),
#'     Statuses = list(
#'       "ONGOING"|"CLOSED"
#'     ),
#'     ResourceCollection = list(
#'       CloudFormation = list(
#'         StackNames = list(
#'           "string"
#'         )
#'       )
#'     )
#'   ),
#'   MaxResults = 123,
#'   NextToken = "string",
#'   Type = "REACTIVE"|"PROACTIVE"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_search_insights
devopsguru_search_insights <- function(StartTimeRange, Filters = NULL, MaxResults = NULL, NextToken = NULL, Type) {
  op <- new_operation(
    name = "SearchInsights",
    http_method = "POST",
    http_path = "/insights/search",
    paginator = list()
  )
  input <- .devopsguru$search_insights_input(StartTimeRange = StartTimeRange, Filters = Filters, MaxResults = MaxResults, NextToken = NextToken, Type = Type)
  output <- .devopsguru$search_insights_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$search_insights <- devopsguru_search_insights

#' Updates the collection of resources that DevOps Guru analyzes
#'
#' @description
#' Updates the collection of resources that DevOps Guru analyzes. The one
#' type of AWS resource collection supported is AWS CloudFormation stacks.
#' DevOps Guru can be configured to analyze only the AWS resources that are
#' defined in the stacks. This method also creates the IAM role required
#' for you to use DevOps Guru.
#'
#' @usage
#' devopsguru_update_resource_collection(Action, ResourceCollection)
#'
#' @param Action &#91;required&#93; Specifies if the resource collection in the request is added or deleted
#' to the resource collection.
#' @param ResourceCollection &#91;required&#93; 
#'
#' @section Request syntax:
#' ```
#' svc$update_resource_collection(
#'   Action = "ADD"|"REMOVE",
#'   ResourceCollection = list(
#'     CloudFormation = list(
#'       StackNames = list(
#'         "string"
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_update_resource_collection
devopsguru_update_resource_collection <- function(Action, ResourceCollection) {
  op <- new_operation(
    name = "UpdateResourceCollection",
    http_method = "PUT",
    http_path = "/resource-collections",
    paginator = list()
  )
  input <- .devopsguru$update_resource_collection_input(Action = Action, ResourceCollection = ResourceCollection)
  output <- .devopsguru$update_resource_collection_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$update_resource_collection <- devopsguru_update_resource_collection

#' Enables or disables integration with a service that can be integrated
#' with DevOps Guru
#'
#' @description
#' Enables or disables integration with a service that can be integrated
#' with DevOps Guru. The one service that can be integrated with DevOps
#' Guru is AWS Systems Manager, which can be used to create an OpsItem for
#' each generated insight.
#'
#' @usage
#' devopsguru_update_service_integration(ServiceIntegration)
#'
#' @param ServiceIntegration &#91;required&#93; An `IntegratedServiceConfig` object used to specify the integrated
#' service you want to update, and whether you want to update it to enabled
#' or disabled.
#'
#' @section Request syntax:
#' ```
#' svc$update_service_integration(
#'   ServiceIntegration = list(
#'     OpsCenter = list(
#'       OptInStatus = "ENABLED"|"DISABLED"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname devopsguru_update_service_integration
devopsguru_update_service_integration <- function(ServiceIntegration) {
  op <- new_operation(
    name = "UpdateServiceIntegration",
    http_method = "PUT",
    http_path = "/service-integrations",
    paginator = list()
  )
  input <- .devopsguru$update_service_integration_input(ServiceIntegration = ServiceIntegration)
  output <- .devopsguru$update_service_integration_output()
  config <- get_config()
  svc <- .devopsguru$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.devopsguru$operations$update_service_integration <- devopsguru_update_service_integration
