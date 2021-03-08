#' Minimal example of S4 usage.
#'
#' Picks an optimal k based on some metric.
#'
#' @param x For \code{geometricSizeFactors}, a numeric matrix of counts with one row per feature and column per cell.
#' Alternatively, a \linkS4class{SummarizedExperiment} or \linkS4class{SingleCellExperiment} containing such counts.
#'
#' @author
#' @name optimizeKParameter
#'
#' @examples
#' a <- 1 + 2
NULL

#' @export
#' @rdname optimizeKParameter
setGeneric("optimizeKParameter", function(x, ...) standardGeneric("optimizeKParameter"))

.optimize_k_parameter <- function() {

}

#' Methods defined on arg types ---
#' @export
#' @rdname optimizeKParameter
setMethod("optimizeKParameter", "ANY", .optimize_k_parameter)

#' @export
#' @rdname optimizeKParameter
#' @importFrom SingleCellExperiment altExp altExps altExp<- altExps<-
#' @importClassesFrom SingleCellExperiment SingleCellExperiment
setMethod(
    "optimizeKParameter", "SingleCellExperiment",
    function() {
        0
    }
)