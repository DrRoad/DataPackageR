% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataversion.r
\name{data_version}
\alias{data_version}
\alias{dataVersion}
\title{Get the DataVersion for a package}
\usage{
data_version(pkg, lib.loc = NULL)

dataVersion(pkg, lib.loc = NULL)
}
\arguments{
\item{pkg}{\code{character} the package name}

\item{lib.loc}{\code{character} path to library location.}
}
\description{
Retrieves the DataVersion of a package if available
}
\note{
\code{dataVersion()} has been renamed to \code{data_version()}
}
\examples{
if(rmarkdown::pandoc_available()){
f <- tempdir()
f <- file.path(f,"foo.Rmd")
con <- file(f)
writeLines("```{r}\\n tbl = table(sample(1:10,1000,replace=TRUE)) \\n```\\n",con=con)
close(con)
pname <- basename(tempfile())
datapackage_skeleton(name = pname,
   path=tempdir(),
   force = TRUE,
   r_object_names = "tbl",
   code_files = f)

   package_build(file.path(tempdir(),pname), install = FALSE)

   devtools::load_all(file.path(tempdir(),pname))
   data_version(pname)
}
}
\seealso{
\code{\link[utils]{packageVersion}}
}
