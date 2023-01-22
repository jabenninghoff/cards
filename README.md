
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
#>  [1] "3S 8S 8C JS QC: one_pair"      "5D 6H 7C JD QH: high_card"    
#>  [3] "3D 4H 9C 10H AH: high_card"    "3H 4C 6H 9S 9D: one_pair"     
#>  [5] "4C 7C 8C 9C AH: high_card"     "4S 5C 8H 10D KD: high_card"   
#>  [7] "3D 5S 6S 9S AH: high_card"     "2S 2D 6D 9H KD: one_pair"     
#>  [9] "8D 10C 10S QH KH: one_pair"    "2D 3H 9C 10H 10S: one_pair"   
#> [11] "3C 8H JH QS KD: high_card"     "3H 6S 9D JC KD: high_card"    
#> [13] "2H 3D 3H 6D AH: one_pair"      "8D 10D JH JD AC: jacks_better"
#> [15] "2S 3H 10H KD AH: high_card"    "4D 10H QC AH AD: jacks_better"
#> [17] "2H 4S 5H 7C 8D: high_card"     "5C 7S JS KS AC: high_card"    
#> [19] "5S JH QH QC AS: jacks_better"  "3C 5S 10H JD KD: high_card"   
#> [21] "6H 6D 8C 10C JH: one_pair"     "3D 5C 8D 10D JC: high_card"   
#> [23] "5D 9S JS QD KS: high_card"     "2S 5H 8S KC KS: jacks_better" 
#> [25] "2S 7C 8C QH KD: high_card"     "4S 6D 6H 10H AH: one_pair"    
#> [27] "9D 9C 9H KS AD: three_ofakind" "5S 7H JS JC JH: three_ofakind"
#> [29] "2C 3H 3D 4S 7H: one_pair"      "2C 5C 7D 8H KD: high_card"    
#> [31] "2H 3C 6S 6C JS: one_pair"      "2S 5H 5C 6S 7D: one_pair"     
#> [33] "2D 5D JH AS AC: jacks_better"  "3C 6C 9H AH AD: jacks_better" 
#> [35] "2C 3C 4H 10D QH: high_card"    "2H 2C 3C 9S KS: one_pair"     
#> [37] "4S 5S 9H QH AS: high_card"     "4D 5D 8D 10H JC: high_card"   
#> [39] "3H 5D 8D 10C QS: high_card"    "2H 2S 5H 9H KH: one_pair"     
#> [41] "3S 4D 5S QS KH: high_card"     "3D 6D 9C 10H AC: high_card"   
#> [43] "3H 4H 5H QS AC: high_card"     "3D 4C 5D 5H 6H: one_pair"     
#> [45] "3C 5H 8H KD AD: high_card"     "6C 10H 10S KS AH: one_pair"   
#> [47] "3H 4C 5S 9S AH: high_card"     "3C 5S 6C JD KS: high_card"    
#> [49] "7S 9C 10D JH QS: high_card"    "3H 4D 6S 9D QD: high_card"
```
