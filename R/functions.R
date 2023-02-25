#' Get names of files that will be contain function names
#' @param path Presumes that the current working directory is the main folder of the current R project/package.
#' @return Character string of file paths
#' @export
find_files_with_functions <- function(path = here::here()) {

	topFolder <- list.files(path)

	stopifnot(
		"The function requires the project session to be active and the working directory to be the project root, or where the *.Rproj file is located." = any(grepl("^R$", topFolder))
	)

	filePath <- file.path(path, "R")
	allFunctionFiles <- list.files(path = filePath, recursive = TRUE, full.names = TRUE)

	# Return
	allFunctionFiles
}
