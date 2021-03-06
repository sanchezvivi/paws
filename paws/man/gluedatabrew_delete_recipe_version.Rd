% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gluedatabrew_operations.R
\name{gluedatabrew_delete_recipe_version}
\alias{gluedatabrew_delete_recipe_version}
\title{Deletes a single version of an AWS Glue DataBrew recipe}
\usage{
gluedatabrew_delete_recipe_version(Name, RecipeVersion)
}
\arguments{
\item{Name}{[required] The name of the recipe to be deleted.}

\item{RecipeVersion}{[required] The version of the recipe to be deleted.}
}
\description{
Deletes a single version of an AWS Glue DataBrew recipe.
}
\section{Request syntax}{
\preformatted{svc$delete_recipe_version(
  Name = "string",
  RecipeVersion = "string"
)
}
}

\keyword{internal}
