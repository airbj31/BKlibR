BKlibR
=======

Kim, Byungju PhD

last update : July 21, 2021

## Introduction

* This repository is maintained and developed by Byungju Kim for various data analysis purpose.


* Package Dependencies
  - [tidyverse](https://github.com/tidyverse)

## Installation

```r
  # Install the the development version from GitHub:
  # install.packages("devtools")
  devtools::install_github("airbj31/BKlibR")
```

## Function developed

### Library install/load

* qlib : load multiple library quietly if the lib not exists, it tried to install that library from cran.

*

*


### FILE I/O 

* read12toAdd
  read 12 coded plink file generated by `plink --recode 12` to additive-model or one-hot encoded matrix.
  father, motherm sex, and affection status are ignored.
  ```r
  read12toAdd(ped,map,onehot=f)
  ```

### Exploratory DATA analysis.

* describe_df 
  simple exploratory data ananysis on the given data.
  when the available 
  ```r
  describe_df(starwars,show_freq=T)
  ```

* BKtbl
  base R's `table()` extension which `unlist()` list object when the given data is `list`.
  this function is used in `gauge_df()`
  ```r
  BKtbl(starwars$films)
  ```

### Distance matrix

* shuffle distance matrix
    * x    - distance matrix object
    * seed - random seed for reproductive shuffling.
  ```r
  shuf.dist(x,seed)
  ```

### Variant Calling from alignment (under development)

* currently, mafft is used for alignment.


