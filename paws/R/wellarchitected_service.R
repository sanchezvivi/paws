# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' AWS Well-Architected Tool
#'
#' @description
#' This is the *AWS Well-Architected Tool API Reference*.
#' 
#' The AWS Well-Architected Tool API provides programmatic access to the
#' [AWS Well-Architected
#' Tool](https://aws.amazon.com/well-architected-tool/) in the [AWS
#' Management
#' Console](https://console.aws.amazon.com/wellarchitected/home).
#' 
#' **Managing workloads:**
#' 
#' -   CreateWorkload: Define a new workload.
#' 
#' -   ListWorkloads: List workloads.
#' 
#' -   GetWorkload: Get the properties of a workload.
#' 
#' -   UpdateWorkload: Update the properties of a workload.
#' 
#' -   DeleteWorkload: Delete a workload.
#' 
#' **Managing milestones:**
#' 
#' -   CreateMilestone: Create a milestone.
#' 
#' -   ListMilestones: List milestones.
#' 
#' -   GetMilestone: Get the properties of a milestone.
#' 
#' **Managing lenses:**
#' 
#' -   ListLenses: List the available lenses.
#' 
#' -   AssociateLenses: Add one or more lenses to a workload.
#' 
#' -   DisassociateLenses: Remove one or more lenses from a workload.
#' 
#' -   ListNotifications: List lens notifications for a workload.
#' 
#' -   GetLensVersionDifference: Get the differences between the version of
#'     a lens used in a workload and the latest version.
#' 
#' -   UpgradeLensReview: Upgrade a workload to use the latest version of a
#'     lens.
#' 
#' **Managing reviews:**
#' 
#' -   ListLensReviews: List reviews associated with a workload.
#' 
#' -   GetLensReview: Get pillar and risk data associated with a workload
#'     review.
#' 
#' -   GetLensReviewReport: Get the report associated with a workload
#'     review.
#' 
#' -   UpdateLensReview: Update the notes associated with a workload
#'     review.
#' 
#' -   ListAnswers: List the questions and answers in a workload review.
#' 
#' -   UpdateAnswer: Update the answer to a specific question in a workload
#'     review.
#' 
#' -   ListLensReviewImprovements: List the improvement plan associated
#'     with a workload review.
#' 
#' **Managing workload shares:**
#' 
#' -   ListWorkloadShares: List the workload shares associated with a
#'     workload.
#' 
#' -   CreateWorkloadShare: Create a workload share.
#' 
#' -   UpdateWorkloadShare: Update a workload share.
#' 
#' -   DeleteWorkloadShare: Delete a workload share.
#' 
#' **Managing workload share invitations:**
#' 
#' -   ListShareInvitations: List workload share invitations.
#' 
#' -   UpdateShareInvitation: Update a workload share invitation.
#' 
#' For information about the AWS Well-Architected Tool, see the [AWS
#' Well-Architected Tool User
#' Guide](https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- wellarchitected(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- wellarchitected()
#' svc$associate_lenses(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=wellarchitected_associate_lenses]{associate_lenses} \tab Associate a lens to a workload\cr
#'  \link[=wellarchitected_create_milestone]{create_milestone} \tab Create a milestone for an existing workload\cr
#'  \link[=wellarchitected_create_workload]{create_workload} \tab Create a new workload\cr
#'  \link[=wellarchitected_create_workload_share]{create_workload_share} \tab Create a workload share\cr
#'  \link[=wellarchitected_delete_workload]{delete_workload} \tab Delete an existing workload\cr
#'  \link[=wellarchitected_delete_workload_share]{delete_workload_share} \tab Delete a workload share\cr
#'  \link[=wellarchitected_disassociate_lenses]{disassociate_lenses} \tab Disassociate a lens from a workload\cr
#'  \link[=wellarchitected_get_answer]{get_answer} \tab Get lens review\cr
#'  \link[=wellarchitected_get_lens_review]{get_lens_review} \tab Get lens review\cr
#'  \link[=wellarchitected_get_lens_review_report]{get_lens_review_report} \tab Get lens review report\cr
#'  \link[=wellarchitected_get_lens_version_difference]{get_lens_version_difference} \tab Get lens version differences\cr
#'  \link[=wellarchitected_get_milestone]{get_milestone} \tab Get a milestone for an existing workload\cr
#'  \link[=wellarchitected_get_workload]{get_workload} \tab Get an existing workload\cr
#'  \link[=wellarchitected_list_answers]{list_answers} \tab List of answers\cr
#'  \link[=wellarchitected_list_lenses]{list_lenses} \tab List the available lenses\cr
#'  \link[=wellarchitected_list_lens_review_improvements]{list_lens_review_improvements} \tab List lens review improvements\cr
#'  \link[=wellarchitected_list_lens_reviews]{list_lens_reviews} \tab List lens reviews\cr
#'  \link[=wellarchitected_list_milestones]{list_milestones} \tab List all milestones for an existing workload\cr
#'  \link[=wellarchitected_list_notifications]{list_notifications} \tab List lens notifications\cr
#'  \link[=wellarchitected_list_share_invitations]{list_share_invitations} \tab List the workload invitations\cr
#'  \link[=wellarchitected_list_workloads]{list_workloads} \tab List workloads\cr
#'  \link[=wellarchitected_list_workload_shares]{list_workload_shares} \tab List the workload shares associated with the workload\cr
#'  \link[=wellarchitected_update_answer]{update_answer} \tab Update the answer\cr
#'  \link[=wellarchitected_update_lens_review]{update_lens_review} \tab Update lens review\cr
#'  \link[=wellarchitected_update_share_invitation]{update_share_invitation} \tab Update a workload invitation\cr
#'  \link[=wellarchitected_update_workload]{update_workload} \tab Update an existing workload\cr
#'  \link[=wellarchitected_update_workload_share]{update_workload_share} \tab Update a workload share\cr
#'  \link[=wellarchitected_upgrade_lens_review]{upgrade_lens_review} \tab Upgrade lens review
#' }
#'
#' @rdname wellarchitected
#' @export
wellarchitected <- function(config = list()) {
  svc <- .wellarchitected$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.wellarchitected <- list()

.wellarchitected$operations <- list()

.wellarchitected$metadata <- list(
  service_name = "wellarchitected",
  endpoints = list("*" = list(endpoint = "wellarchitected.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "wellarchitected.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "wellarchitected.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "wellarchitected.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "WellArchitected",
  api_version = "2020-03-31",
  signing_name = "wellarchitected",
  json_version = "1.1",
  target_prefix = ""
)

.wellarchitected$service <- function(config = list()) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.wellarchitected$metadata, handlers, config)
}
