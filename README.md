
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

deck <- new_deck_df()
replicate(50, {
  hand <- deal_hand(deck)
  paste0(print_hand(hand), ": ", eval_hand(hand))
})
#>  [1] "4S 5H 7D 9S AH: high_card"     "2H 4C 6S AH AC: jacks_better" 
#>  [3] "3H 4H 6H 8S AD: high_card"     "6H 8H 10H QC AC: high_card"   
#>  [5] "2H 6S 7H 9C AD: high_card"     "2D 9S 10S KS AH: high_card"   
#>  [7] "3C 5D 10D QS KD: high_card"    "3C 3S 4H 8D AS: one_pair"     
#>  [9] "3D 6H 10D QH QS: jacks_better" "6C 7H 7S 9C QC: one_pair"     
#> [11] "2S 6C 6H 7H 10C: one_pair"     "2H 2C 5D JH KH: one_pair"     
#> [13] "2C 5H 5C AC AH: two_pair"      "5D 6H 9C 9S JH: one_pair"     
#> [15] "2C 7C 9D 9S AD: one_pair"      "3S 5H JS QS AS: high_card"    
#> [17] "3C 4S 8H 10D AS: high_card"    "7H 8C 10C KD AC: high_card"   
#> [19] "4C 6S 6C 7D 10H: one_pair"     "3S 3H 5D 6C 7D: one_pair"     
#> [21] "4C 5S QS QD AC: jacks_better"  "2H 2S 3H JD QH: one_pair"     
#> [23] "3D 5D 6S 8D JS: high_card"     "9H 10C KS AD AH: jacks_better"
#> [25] "5S 6S 9D 10S QD: high_card"    "2H 8S 10D JC KC: high_card"   
#> [27] "3C 6S QD QS KD: jacks_better"  "4S 6H 9H 10S KD: high_card"   
#> [29] "4D 6D 7H 8H 10D: high_card"    "5H 6S 7C 8C 10D: high_card"   
#> [31] "2D 4C 5S 9H 10S: high_card"    "3C 8S 9D QS KH: high_card"    
#> [33] "3S 4C 8S 10C KS: high_card"    "3H 6S 9H 10H QH: high_card"   
#> [35] "2C 3S 4C 7H AD: high_card"     "2D 5H 8S 10D JD: high_card"   
#> [37] "9S 10S QH AS AC: jacks_better" "2H 7H 8H 9D 10D: high_card"   
#> [39] "4C 4H 6H 10C 10D: two_pair"    "3D 8D 9D 9C KC: one_pair"     
#> [41] "3C 6D 8C QH KH: high_card"     "3H 6S QH QS AH: jacks_better" 
#> [43] "3D 5S 8C 10H JD: high_card"    "3D 7H 8H 9S QC: high_card"    
#> [45] "2S 3S 3H 6H 6D: two_pair"      "2S JC QD QS AS: jacks_better" 
#> [47] "2S 3S 3H 4D 7H: one_pair"      "7C 7S 8D 9C AC: one_pair"     
#> [49] "4H 6S 9D 9S JD: one_pair"      "2D 5D 6D 9S QD: high_card"
```
