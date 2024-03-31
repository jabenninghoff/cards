
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
#>  [1] "7D TH 2D JH 9C: high_card"    "TH AS 8C 6C AC: jacks_better"
#>  [3] "AS 4H 6S 5H 9S: high_card"    "TC 2D 7C 2H JD: one_pair"    
#>  [5] "KD 8H 2D TH 6C: high_card"    "7S QH 9H 6D 2H: high_card"   
#>  [7] "JD JS 4D 9D 3H: jacks_better" "TH 4H JH 5H 6S: high_card"   
#>  [9] "TD 2H AD JS QD: high_card"    "2C 6C 3D TD KC: high_card"   
#> [11] "AC 8H 5H 8D 3D: one_pair"     "AS JS 7C 8H KH: high_card"   
#> [13] "6C 9S 4H 6D JD: one_pair"     "5S 4D TH AC QS: high_card"   
#> [15] "JD 5D TS QC KC: high_card"    "2D 3D 4H TC AD: high_card"   
#> [17] "4C AC 3H QH 8S: high_card"    "3S 7C QS 2S JD: high_card"   
#> [19] "8H 8D 9C QH KH: one_pair"     "8H 8S TS 6H 4H: one_pair"    
#> [21] "6S 4H 6D KS TD: one_pair"     "8S 9S 9D 6S QC: one_pair"    
#> [23] "8D AD KD 9H 3S: high_card"    "9H JS 3H KS QH: high_card"   
#> [25] "TD 7S AD 4H TC: one_pair"     "8S 2S 7D AD AC: jacks_better"
#> [27] "9C AD QC KD 4S: high_card"    "AD 6H 2D 7H 6C: one_pair"    
#> [29] "TC 8D 6D 5S QH: high_card"    "2S 4S 4D 5C 3S: one_pair"    
#> [31] "3C 5S 2C JH AC: high_card"    "QS 8H AS 3S 9S: high_card"   
#> [33] "6D TS 2H 3H AS: high_card"    "9C QC KH AD 2C: high_card"   
#> [35] "5H AC TS 5S JS: one_pair"     "TC 3D AS 5C 4C: high_card"   
#> [37] "8H JH 3S 6H 3D: one_pair"     "KH 2C 2D TD 5S: one_pair"    
#> [39] "KH TD 9C 2C AH: high_card"    "8S 5S 2S 6H 9S: high_card"   
#> [41] "TH 3C 9H TS JC: one_pair"     "8H 7S JS 3S 7C: one_pair"    
#> [43] "6D 3H KD KC 6C: two_pair"     "6D 9H 3C 6S AH: one_pair"    
#> [45] "JD JC AD TD KH: jacks_better" "7H 9D 2H 3H 8D: high_card"   
#> [47] "8H 2H 7S 2D 7H: two_pair"     "8S AD 3S 3H 6H: one_pair"    
#> [49] "JH 4S 3C 7S KD: high_card"    "6S 9H 5H KD QD: high_card"
```
