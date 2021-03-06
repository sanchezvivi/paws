context("cloudwatchlogs")

svc <- paws::cloudwatchlogs()

test_that("describe_destinations", {
  expect_error(svc$describe_destinations(), NA)
})

test_that("describe_export_tasks", {
  expect_error(svc$describe_export_tasks(), NA)
})

test_that("describe_log_groups", {
  expect_error(svc$describe_log_groups(), NA)
})

test_that("describe_metric_filters", {
  expect_error(svc$describe_metric_filters(), NA)
})

test_that("describe_queries", {
  expect_error(svc$describe_queries(), NA)
})

test_that("describe_query_definitions", {
  expect_error(svc$describe_query_definitions(), NA)
})

test_that("describe_resource_policies", {
  expect_error(svc$describe_resource_policies(), NA)
})
