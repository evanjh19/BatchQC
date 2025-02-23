#' This function creates a summarized experiment object from count
#' and metadata files uploaded by the user
#' @param counts counts dataframe
#' @param columndata metadata dataframe
#' @return a summarized experiment object
#' @import SummarizedExperiment
#' @import reader
#' @import EBSeq
#' @import utils
#' @export

summarized_experiment <- function(counts, columndata){

    counts <- counts[rowSums(counts)>0,]
    mutual_sample <- intersect(colnames(counts), rownames(columndata))
    counts <- counts[,mutual_sample]
    columndata <- columndata[mutual_sample,]

    se <- SummarizedExperiment(assays = list(counts = counts),
                                colData = columndata,
                                metadata = list(metadata = columndata))

    # Add library size
    #colData(se)$library_size <- colSums(se@assays@data$counts)
    return(se)
}
