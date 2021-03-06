% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalize_operations.R
\name{personalize_update_campaign}
\alias{personalize_update_campaign}
\title{Updates a campaign by either deploying a new solution or changing the
value of the campaign's minProvisionedTPS parameter}
\usage{
personalize_update_campaign(campaignArn, solutionVersionArn,
  minProvisionedTPS, campaignConfig)
}
\arguments{
\item{campaignArn}{[required] The Amazon Resource Name (ARN) of the campaign.}

\item{solutionVersionArn}{The ARN of a new solution version to deploy.}

\item{minProvisionedTPS}{Specifies the requested minimum provisioned transactions
(recommendations) per second that Amazon Personalize will support.}

\item{campaignConfig}{The configuration details of a campaign.}
}
\description{
Updates a campaign by either deploying a new solution or changing the
value of the campaign's \code{minProvisionedTPS} parameter.

To update a campaign, the campaign status must be ACTIVE or CREATE
FAILED. Check the campaign status using the DescribeCampaign API.

You must wait until the \code{status} of the updated campaign is \code{ACTIVE}
before asking the campaign for recommendations.

For more information on campaigns, see CreateCampaign.
}
\section{Request syntax}{
\preformatted{svc$update_campaign(
  campaignArn = "string",
  solutionVersionArn = "string",
  minProvisionedTPS = 123,
  campaignConfig = list(
    itemExplorationConfig = list(
      "string"
    )
  )
)
}
}

\keyword{internal}
