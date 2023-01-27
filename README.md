
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
  hand <- deal_hand_df(deck)
  paste0(print_hand_df(hand), ": ", eval_hand(hand))
})
#>  [1] "9D QD KH AD AH: jacks_better"   "4S 5H 7C 8C AC: high_card"     
#>  [3] "4S 6C 9C KC KH: jacks_better"   "2H 9H 9S KH AS: one_pair"      
#>  [5] "4H 8D 10C JH AH: high_card"     "5H 6H 10C JC AC: high_card"    
#>  [7] "6D 10D JD KD KH: jacks_better"  "2S 3S 6D 10S QC: high_card"    
#>  [9] "3C 6S 10S JS QC: high_card"     "4D 5S 7D 10H AC: high_card"    
#> [11] "2D 4S 8H 8S 9C: one_pair"       "2C 3H 7H 9C AC: high_card"     
#> [13] "5D 8D 9D JC KH: high_card"      "4C 6D 7D QS QD: jacks_better"  
#> [15] "2H 4C 6S 7C 10C: high_card"     "3C 5S 6H JC QD: high_card"     
#> [17] "5H 10D JH QD KS: high_card"     "4H 4C 5C 9C QH: one_pair"      
#> [19] "3C 9C 9H 9S KD: three_ofakind"  "4D 5H 8S 9D QC: high_card"     
#> [21] "3H 8C 9H 10D JD: high_card"     "3C 5S 10H JH KS: high_card"    
#> [23] "4H 4S 5H 6H JH: one_pair"       "5C 10S 10C JH KD: one_pair"    
#> [25] "2C 2H 3S 9S KD: one_pair"       "3D 4D 5S 10S JD: high_card"    
#> [27] "3C 4C 6D 7D 9H: high_card"      "3S 3C 9D 10C KD: one_pair"     
#> [29] "4D 6C 8C 10S QD: high_card"     "2H 3C 5S 9C 10D: high_card"    
#> [31] "5C 6H QS QD AD: jacks_better"   "4S 9S 10D KH AC: high_card"    
#> [33] "2H 3C 6H 8S KC: high_card"      "5S 7H 9H 10D QS: high_card"    
#> [35] "2D 3H 4H 7H QS: high_card"      "3H 6D 7C 8C 8D: one_pair"      
#> [37] "5C 6S 9C 10D AH: high_card"     "3H 6S 6H 8C 8S: two_pair"      
#> [39] "5C 6C 6S 10D JC: one_pair"      "2C 2H 5D JH KC: one_pair"      
#> [41] "3D 5S 5D 9H KS: one_pair"       "2S 7S 9D KS KD: jacks_better"  
#> [43] "4S 4C 5H QC KD: one_pair"       "3C 6C JH QD QC: jacks_better"  
#> [45] "8S 8H 10S KD KS: two_pair"      "5D JD QC KS KD: jacks_better"  
#> [47] "2C 4D 7D 7H AD: one_pair"       "7C 7D 7S 10D AS: three_ofakind"
#> [49] "3H 8H 8C 8D 9H: three_ofakind"  "5H 6D 7C 10H KS: high_card"
```
