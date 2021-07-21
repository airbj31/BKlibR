BKlibR
=======

Kim, Byungju PhD

last update : July 21, 2021

## Introduction

* This repository is maintained and developed by Byungju Kim.


* Package Dependencies
  - [tidyverse](https://github.com/tidyverse)

## Installation

```r
  # Install the the development version from GitHub:
  # install.packages("devtools")
  devtools::install_github("airbj31/BKlibR")
```

## Brief usages

### FILE I/O related

* read12toAdd

* readAD

* readIllumina (Under-development)



### Distance matrix related

* shuffle distance matrix
    * x    - distance matrix object
    * seed - random seed for reproductive shuffling.
```r
shuf.dist(x,seed)
```

### Variant Calling from alignment (under development)

* currently, mafft is used for alignment.

###


