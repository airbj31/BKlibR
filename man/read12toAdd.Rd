% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read12toAdd.R
\name{read12toAdd}
\alias{read12toAdd}
\title{Read plink 12 coding file (plink --recode 12 )into one-hot encoding or additive modle matrix.}
\usage{
read12toAdd(ped, map, onehot = F)
}
\arguments{
\item{ped}{a 1/2 coded plnk pedigree file (+7 metadata column)}

\item{map}{plink genomic map file which describe genomic coordinate and unique SNP IDs.}

\item{onehot}{choice of one-hot encoding or additive model.}
}
\description{
Read plink 12 coding file (plink --recode 12 )into one-hot encoding or additive modle matrix.
}
\examples{
read12toAdd(ped,map)
}
\author{
Byungju Kim (bjk@inu.ac.kr)
}
