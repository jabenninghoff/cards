test_that(".python-version matches renv.lock locally", {
  skip_on_ci()
  skip_on_cran()
  skip_on_covr()
  withr::local_dir("../..")

  python_version_renv <- renv::lockfile_read()$Python$Version
  python_version_renv <- unlist(strsplit(python_version_renv, ".", fixed = TRUE))
  python_version_renv <- paste(python_version_renv[1:2], collapse = ".")
  python_version_file <- readLines(".python-version")

  expect_identical(python_version_file, python_version_renv)
})
