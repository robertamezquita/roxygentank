#' Create templates for new R functions
#'
#' Creates a .R file with all available roxygen documentation tags
#' with descriptions of each one. Places the new .R file within the current
#' project's \code{R/} directory. [roxygentank_summary()] creates a new file
#' with documentation of select tags and formatting options, while
#' [roxygentank_minimal()] only provides a basic .R with some
#' suggested tags and organization.
#'
#' @param name File name, without extension; will create if it doesn't
#'   already exist; if left null, creates a new file \code{R/roxygentank_template.R}
#' @return none; called for its side-effect of creating an R file
#'
#' @name roxygentank_templates
NULL

#' @rdname roxygentank_templates
#' @export
roxygentank_summary <- function(name = NULL) {
    if (!rlang::is_null(name)) {
        path <- here::here("R", paste0(name, ".R"))
    } else {
        path <- here::here("R", "roxygentank_summary.R")
    }
    template <- system.file("templates/roxygentank_summary.R", package = "roxygentank")
    fs::file_copy(template, path, overwrite = FALSE)
}

#' @rdname roxygentank_templates
#' @export
roxygentank_minimal <- function(name = NULL) {
    if (!rlang::is_null(name)) {
        path <- here::here("R", paste0(name, ".R"))
    } else {
        path <- here::here("R", "roxygentank_minimal.R")
    }
    template <- system.file("templates/roxygentank_summary.R", package = "roxygentank")
    fs::file_copy(template, path, overwrite = FALSE)
}

# Support for any provided template file ---
# #' @param template File name of a template stored in the roxygentank package in inst/templates.
# #' @rdname roxygentank_templates
# #' @export
# roxygentank_custom <- function(name = NULL, template = NULL) {
#     # Checks for existence ----
#     if (rlang::is_null(template)) {
#         rlang::abort("Please provide your custom template stored.")
#     }
#     .template <- system.file(paste0("templates/", template), package = "roxygentank")
#     if (!fs::file_exists(.template)) {
#         rlang::abort("Please make sure your template exists in inst/templates in the roxygentank package.")
#     }
#     if (!rlang::is_null(name)) {
#         path <- here::here("R", paste0(name, ".R"))
#     } else {
#         path <- here::here("R", template)
#     }
#     fs::file_copy(template, path, overwrite = FALSE)
# }