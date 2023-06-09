% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{stratified_sample}
\alias{stratified_sample}
\title{Generate a stratified subsample for a vector given a grouping}
\usage{
stratified_sample(
  indexer,
  grouping,
  sample_proportion = 0.1,
  min_count = 0,
  seed = 424242
)
}
\arguments{
\item{indexer}{A vector containing cell barcodes/labels to subsample}

\item{grouping}{A vector containg a groups to stratify by ( same size as indexer)}

\item{sample_proportion}{proportion to sample data (default: .1)}

\item{min_count}{Minimum number of samples in a group to keep}

\item{seed}{seed value for set.seed}
}
\value{
A subsampled vector generated from indexer
}
\description{
Use this function to compute LISI scores of one or more labels.
}
\examples{
data(sceiad_subset_data)
rownames(sceiad_subset_data) <- sceiad_subset_data$Barcode
res  = stratified_sample(sceiad_subset_data$Barcode, sceiad_subset_data$cluster)
dim(sceiad_subset_data[res, ])
}
