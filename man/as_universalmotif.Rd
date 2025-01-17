% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class_utils.R
\name{as_universalmotif}
\alias{as_universalmotif}
\title{Convert universalmotif data.frames back into universalmotifs}
\usage{
as_universalmotif(data)
}
\arguments{
\item{data}{a universalmotif_dataframe (output from
`as_universalmotif_dataframe()`, or `runDreme()`)}
}
\value{
universalmotif list from motifs, updated to reflect the data.frame
  column values.
}
\description{
This function converts universalmotif data.frames into `universalmotif`
format, first by updating the `motif` metadata to reflect the current values
of the linked columns, then extracting the updated `universalmotif` objects.
Columns which do not correspond to `universalmotif` slot names are dropped
and not propagated to the `universalmotif` output.
}
\details{
Columns which are propagated to `universalmotif` format:
`name`, `altname`, `family`, `organism`, `consensus`, `alphabet`, `strand`,
`icscore`, `nsites`, `bkgsites`, `pval`, `qval`, `eval`
}
\examples{
motif <- universalmotif::create_motif()
df <- as_universalmotif_dataframe(motif)
df <- dplyr::mutate(df, altname = "new_alt_name")

motifs <- as_universalmotif(df)
}
\seealso{
[as_universalmotif_dataframe()]
}
