#' Function title in sentence case
#'
#' Description in paragraph form.
#'
#' More details returned below params/return.
#'
#' @param x A description.
#' @param y Another description.
#'
#' @return What function returns.
#'
#' @seealso [function()]
#' @seealso \url{https://yoursite.org}
#'
#' @family family name adds to see also
#' @name favorite_name
#'
#' @examples
#' x <- 1 + 2
#' \dontrun{
#' y <- "a"
#' }
#' \donttest{
#' z <- "blah"
#' }
#'
#' @export
your_function <- function(x, y) {
    "hello world"
}

#' New family of functions
#'
#' A separate functional family.
#'
#' @param z A description.
#'
#' @return Nothing.
#'
#' @name my_name
NULL

#' @rdname my_name
#' @export
hello <- function() {
    "hello"
}

#' @rdname my_name
#' @export
world <- function() {
    "world"
}