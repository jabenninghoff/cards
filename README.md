
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

-   Changelog: See “Changelog” or `NEWS.md`.
-   Planned: [TODO](TODO.md)

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
#>  [1] "3D 6S JC JH KH: jacks_better"  "7H 8C 8H 10D KD: one_pair"    
#>  [3] "5D JH QD KH AC: high_card"     "5C 6D 7C 10D KD: high_card"   
#>  [5] "4S 7H JD JH AH: jacks_better"  "3S 9C JD QC KH: high_card"    
#>  [7] "4D 9C JH QC AS: high_card"     "2D 3H 4D 9H 9S: one_pair"     
#>  [9] "6C 7D 9S 10S 10C: one_pair"    "3D 3S 5S 8S KC: one_pair"     
#> [11] "2H 4C 6S 9D AD: high_card"     "9S 9C 9D KS AD: three_ofakind"
#> [13] "2S 5C 7C 8C KC: high_card"     "2H 5H 5C 8D 10S: one_pair"    
#> [15] "2H 7S 7H 8C QH: one_pair"      "2C 5S 6H QD KC: high_card"    
#> [17] "2H 5D 7S JD AD: high_card"     "2D 4S 5C JS QH: high_card"    
#> [19] "2H 8D 8H JC AC: one_pair"      "3H 4C 6C 8S 8C: one_pair"     
#> [21] "2C 4H 8H 8S 10D: one_pair"     "4D 5C JC JH JS: three_ofakind"
#> [23] "2C 6S 7D 9C JC: high_card"     "5S 7H 9H 10D QH: high_card"   
#> [25] "2D 7D 8H KD AC: high_card"     "5D 7S 8C 10S JD: high_card"   
#> [27] "3C 5H 5C 8D KS: one_pair"      "8S 9C 9H JC AS: one_pair"     
#> [29] "3C 5D 6C 10S QH: high_card"    "4D 6H 9H QS KC: high_card"    
#> [31] "6S 6C 7D 8H AH: one_pair"      "2D 5D 7S 9S JS: high_card"    
#> [33] "2C 3C 5C 9C 9S: one_pair"      "2S 2H 8C 9D QH: one_pair"     
#> [35] "5S 5C 10D JS JH: two_pair"     "2D 3S 5D 8H AD: high_card"    
#> [37] "7S 7D 8H JH KH: one_pair"      "3D 7C 9S JC KS: high_card"    
#> [39] "2C 8D JC QC QS: jacks_better"  "2D 5D 8H JD KS: high_card"    
#> [41] "3D 3H 5S QC KC: one_pair"      "2H 3D 6S 10C QC: high_card"   
#> [43] "4H 8C JS JC KC: jacks_better"  "6S 8D 9D 9S 10D: one_pair"    
#> [45] "9S JH JC JS KH: three_ofakind" "2S 4S 9S 9H KC: one_pair"     
#> [47] "4C 7H 9D JH AC: high_card"     "2H 6H 9D 10S AC: high_card"   
#> [49] "5S 7H 8H 10S JD: high_card"    "2C 9D JH KD AD: high_card"
```
