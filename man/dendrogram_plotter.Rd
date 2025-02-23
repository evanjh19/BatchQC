% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotters.R
\name{dendrogram_plotter}
\alias{dendrogram_plotter}
\title{Dendrogram Plot}
\usage{
dendrogram_plotter(se, assay, annotation_column)
}
\arguments{
\item{se}{SummarizedExperiment object}

\item{assay}{assay to plot}

\item{annotation_column}{sample metadata column}
}
\value{
named list of dendrogram plots

dendrogram is a dendrogram ggplot

circular_dendrogram is a circular dendrogram ggplot
}
\description{
This function creates a dendrogram plot
}
\examples{
library(scran)
se <- mockSCE(20)

dendrograms <- BatchQC::dendrogram_plotter(se,"counts","Treatment")

dendrograms$dendrogram

dendrograms$circular_dendrogram
}
