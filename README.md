
<!-- README.md is generated from README.Rmd. Please edit that file -->
idmodelr
========

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/idmodelr)](https://cran.r-project.org/package=idmodelr) [![Build Status](https://travis-ci.org/seabbs/idmodelr.svg?branch=master)](https://travis-ci.org/seabbs/idmodelr) [![codecov](https://codecov.io/gh/seabbs/idmodelr/branch/master/graph/badge.svg)](https://codecov.io/gh/seabbs/idmodelr)

idmodelr is an R package that contains utility functions for infectious disease modelling. It's main functionality is to facilitate the use of other available modelling packages such as [pomp](http://kingaa.github.io/pomp/). Although, it does offer some basic modelling functionality itself.

Installation
------------

You can install idmodelr from github with:

``` r
# install.packages("devtools")
devtools::install_github("seabbs/idmodelr")
```

### Docker

This packge was developed in a docker container based on the [tidyverse](https://hub.docker.com/r/rocker/tidyverse/) docker image. To run the docker image run:

``` bash
docker run -d -p 8787:8787 --name idmodelr -e USER=seabbs -e PASSWORD=seabbs seabbs/idmodelr
```

The rstudio client can be found on port `:8787` at your local machines ip. The default username:password is seabbs:seabbs, set the user with `-e USER=username`, and the password with `- e PASSWORD=newpasswordhere`. The default is to save the analysis files into the user directory.

To run a plain R terminal use:

``` bash
docker run --rm -it --user seabbs idmodelr /usr/bin/R
```

To run a plain bash session:

``` bash
docker run --rm -it --user seabbs idmodelr /bin/bash
```
