
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
  paste0(print_hand(hand), ": ", eval_hand(hand))
})
#>  [1] "3C 3D 7S 8D AS: one_pair"      "3S 6D 7C 9D AS: high_card"    
#>  [3] "3S 5S 8C JH KC: high_card"     "3H 6D 10C QH AS: high_card"   
#>  [5] "2S 4H 8C 9S QS: high_card"     "7C 10D JD KS AD: high_card"   
#>  [7] "4S 6C 6S JH AS: one_pair"      "4H 6D 6H 7S QS: one_pair"     
#>  [9] "6H 7D 9S 10H 10D: one_pair"    "3D 7C 10H JS JH: jacks_better"
#> [11] "4H 5H 5S 10C QH: one_pair"     "5S 7S 10H 10D AS: one_pair"   
#> [13] "2S 3C 8H JC AH: high_card"     "7D 7C 9H JS AH: one_pair"     
#> [15] "4S 7H 10C 10H AD: one_pair"    "3C 8C 10D QD KC: high_card"   
#> [17] "3C QC QH AH AD: two_pair"      "5C 6S JD JC QD: jacks_better" 
#> [19] "6C 8D 8H 9H QC: one_pair"      "10C 10S JS KH AD: one_pair"   
#> [21] "3C 4C 7H 7D QC: one_pair"      "3C 6D 7C 10C 10S: one_pair"   
#> [23] "3D 6S 9H KH AD: high_card"     "2H 6H 7C AH AD: jacks_better" 
#> [25] "2C 8D 8C 9S AD: one_pair"      "2H 5H JC KD AC: high_card"    
#> [27] "2C 3D 7H 10D JS: high_card"    "2S 4D 10D 10C JC: one_pair"   
#> [29] "2S 5H 7H 8C 10D: high_card"    "3C 3H 4C 10H QD: one_pair"    
#> [31] "3H JC JS AC AH: two_pair"      "5D 6S 8H QD AS: high_card"    
#> [33] "2C 3H 5S 7H AH: high_card"     "6S 7D 8D 9D JH: high_card"    
#> [35] "2C 4C 5D 9S QC: high_card"     "3H 4S 7H 10H KS: high_card"   
#> [37] "3D 4S 7H 9S JC: high_card"     "2C 4D 5H 7S 10C: high_card"   
#> [39] "2H 2C 6D 9S QD: one_pair"      "4S 5S 8H 9D 10D: high_card"   
#> [41] "5H 6C 7D QD AD: high_card"     "2C 5D 6S 10S JC: high_card"   
#> [43] "3H 6D 6C 7D QS: one_pair"      "2C 3C 4S JC QD: high_card"    
#> [45] "2H 5H 7D 9C QH: high_card"     "7S 9H 10D AS AD: jacks_better"
#> [47] "3D 8S 10H JH KD: high_card"    "3S 10S QD AS AD: jacks_better"
#> [49] "2H 3H 4D 10C 10D: one_pair"    "3H 5S 6D 7S 9C: high_card"
```
