test_that("Can find all file names from the relevant R folder within a package", {
	ref <- list.files(file.path(here::here(), "R"), full.names = TRUE)
	out <- find_files_with_functions()
	expect_equal(out, ref)
})
