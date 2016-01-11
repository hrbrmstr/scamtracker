
`scamtracker` is an R pacakge interface to the BBB ScamTracker <https://www.bbb.org/scamtracker/us>

The following functions are implemented:

- `bbb_search`: Search the BBB ScamTracker for incidents
- `scam_details`:	Retrive details about a BBB spam report

### News

- Version  released

### Installation


```r
devtools::install_github("hrbrmstr/scamtracker")
```



### Usage


```r
library(scamtracker)

# current verison
packageVersion("scamtracker")
```

```
## [1] '0.1.0'
```

### Test Results


```r
library(scamtracker)
library(testthat)

date()
```

```
## [1] "Mon Jan 11 18:49:13 2016"
```

```r
test_dir("tests/")
```

```
## testthat results ========================================================================================================
## OK: 0 SKIPPED: 0 FAILED: 0
```

