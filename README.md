
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cards

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
# install.packages("devtools")
devtools::install_github("jabenninghoff/cards")
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
#>  [1] "7S 9H 9C JS KD: one_pair"     "4H 5D 5S 9C 10S: one_pair"   
#>  [3] "4S 7D 8S 10C JD: high_card"   "2S 3D 6H JH QS: high_card"   
#>  [5] "2C 2S 6C 7C QH: one_pair"     "3C 6H 10S QD AS: high_card"  
#>  [7] "4S 9H JH QD KC: high_card"    "5C 5D 6C 8S AH: one_pair"    
#>  [9] "3S 4D 9S 10C JS: high_card"   "5H 8D 8C QC KD: one_pair"    
#> [11] "2D 5D 6C 10S KD: high_card"   "3C 6S 8H 10C KH: high_card"  
#> [13] "2C 2D 3H 10H QS: one_pair"    "2H 3S 8C 9D AC: high_card"   
#> [15] "6D 8H 9D 10D KD: high_card"   "2H 4C 5S 6C 9S: high_card"   
#> [17] "6D 7H 7D 9H JH: one_pair"     "7D 9D JH KH KD: jacks_better"
#> [19] "2D 3S 3D 10H QC: one_pair"    "2S 3C 5S 8S 10C: high_card"  
#> [21] "5S 6H 7H JC JH: jacks_better" "3D 9S 10S 10C AC: one_pair"  
#> [23] "4S 6D 7C 8S QS: high_card"    "2C 2D JC JS QD: two_pair"    
#> [25] "7C 8C QS KC KS: jacks_better" "2S 3D 7C 8H AD: high_card"   
#> [27] "4D 5C 5S 6S 9C: one_pair"     "3C 6H 7H QS AS: high_card"   
#> [29] "2S 5S 5H 7D JC: one_pair"     "6C 7C 9H JH QS: high_card"   
#> [31] "6H 6C 9D JH AS: one_pair"     "2D 5C 9H 10S JC: high_card"  
#> [33] "6C 6S 7D JH JD: two_pair"     "7D JD QH QD KD: jacks_better"
#> [35] "5S 7S 9H QH KD: high_card"    "7D 9H 10C 10H AH: one_pair"  
#> [37] "5D 5S 8H 9S JD: one_pair"     "JC JH QD KS AS: jacks_better"
#> [39] "3C 6C 8H 10D JD: high_card"   "3H 4S 8S JD AC: high_card"   
#> [41] "2D 2S 3C 5H QS: one_pair"     "4S 6H JC QS QD: jacks_better"
#> [43] "2D 4S 6D 8D KH: high_card"    "5H 7D 9S 9D JH: one_pair"    
#> [45] "4S 4D 5H 9S 10S: one_pair"    "3S 7H 9C KD KH: jacks_better"
#> [47] "3H 3D 6D 9C 9H: two_pair"     "5D 10D QD KS AS: high_card"  
#> [49] "2C 3H 6C 8H AC: high_card"    "3H 4C 6H 10H QH: high_card"
```
