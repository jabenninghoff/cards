
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cards <img src="man/figures/logo.png" align="right" alt="logo" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/jabenninghoff/cards/workflows/R-CMD-check/badge.svg)](https://github.com/jabenninghoff/cards/actions)
[![lint](https://github.com/jabenninghoff/cards/workflows/lint/badge.svg)](https://github.com/jabenninghoff/cards/actions)
[![Codecov test
coverage](https://codecov.io/gh/jabenninghoff/cards/branch/main/graph/badge.svg)](https://app.codecov.io/gh/jabenninghoff/cards?branch=main)
<!-- badges: end -->

## Overview

**Card Simulation Tools:** Tools for card game simulations, written in
base R.

Feel free to use and/or fork this project!

## Installation

You can install the development version of cards from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("jabenninghoff/cards")
```

Or using renv:

``` r
# install.packages("renv")
renv::install("jabenninghoff/cards")
```

## Development

- Changelog: See “Changelog” or `NEWS.md`.
- Planned: [TODO](TODO.md)

## Usage

The cards package supports random draws and evaluation of poker rank
[category](https://en.wikipedia.org/wiki/List_of_poker_hands):

``` r
library(cards)

deck <- new_deck()
replicate(50, {
  hand <- deal_hand(deck)
  paste0(print_hand(hand), ": ", eval_hand(hand))
})
#>  [1] "7S 8C KH 8D QD: one_pair"      "7C 2C JD TC AS: high_card"    
#>  [3] "TD 6C KC 7H 9C: high_card"     "TD 6C QS QD 5C: jacks_better" 
#>  [5] "AD 5C 8H 6C 9S: high_card"     "8D 5D 3C 3H 7H: one_pair"     
#>  [7] "JC 8D 9D AS 8H: one_pair"      "3S 5C 8C 4C QC: high_card"    
#>  [9] "6S 8H QS KD 6D: one_pair"      "9S 6H QD QC TH: jacks_better" 
#> [11] "5H KD 6S 2C QH: high_card"     "4C 8S 8H JC 9D: one_pair"     
#> [13] "KH KS 7S KC 2D: three_ofakind" "8S 2H TS 5D 3S: high_card"    
#> [15] "8D AS KH KC 2D: jacks_better"  "QS 5C 9D QD 4H: jacks_better" 
#> [17] "4S 6D 2S 9H 7D: high_card"     "5C JS 9S 9H 7S: one_pair"     
#> [19] "KH 3H 7H 3S 6C: one_pair"      "QC 4H TS KS QD: jacks_better" 
#> [21] "3C JH TH 2S JC: jacks_better"  "4H 5D 7H 3H 4S: one_pair"     
#> [23] "JC 4H 2H 4D 8S: one_pair"      "7C JS 6C TD AH: high_card"    
#> [25] "2D QC 8D 6D JH: high_card"     "7H 2S QD 4S 6H: high_card"    
#> [27] "AD 3D AS 9D JH: jacks_better"  "7S 8H 8D KS AS: one_pair"     
#> [29] "9H 3H 8H 6S 8C: one_pair"      "4C 5S 9C JC 8H: high_card"    
#> [31] "3S KH 6H 4C KD: jacks_better"  "6H AC 6S 2H 5C: one_pair"     
#> [33] "8D QC 4H TH KD: high_card"     "9S QH 2D JD 2H: one_pair"     
#> [35] "KC 8C 2S AS 7C: high_card"     "5C AS TH JC 9S: high_card"    
#> [37] "5S 8D 4S 8S JD: one_pair"      "4S 2D QD 4H 9C: one_pair"     
#> [39] "9D QC 5C AD 3H: high_card"     "QS TH QH TS 7D: two_pair"     
#> [41] "TH TS 9H 3C 9C: two_pair"      "3S 3C 2D AH QH: one_pair"     
#> [43] "TC KD JH KH JD: two_pair"      "3S 4D 4H 7H KH: one_pair"     
#> [45] "AD 7H JS 9D 2D: high_card"     "2H AH 3D 9H AC: jacks_better" 
#> [47] "JC AC TC 5C AS: jacks_better"  "QH 2H AS 5C 8D: high_card"    
#> [49] "3H 9C QC QH JS: jacks_better"  "QC 8S 9D 5S 6D: high_card"
```
