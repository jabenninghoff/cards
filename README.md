
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
#>  [1] "2H 7D 9H JH KD: high_card"     "2D 7C QC QD KD: jacks_better" 
#>  [3] "4C 6D 9C QS AD: high_card"     "2S 8H 10C JS KD: high_card"   
#>  [5] "4D 4C 8C JH QH: one_pair"      "2H 7H KC AC AS: jacks_better" 
#>  [7] "2C 2H 6C QD QS: two_pair"      "2D 7C 8D JC JS: jacks_better" 
#>  [9] "2H 3S 5D 7D JS: high_card"     "5S JS JC JH AS: three_ofakind"
#> [11] "5D 8H 9D QC AD: high_card"     "5D 6H 7C JC JS: jacks_better" 
#> [13] "2S 5S 7H 7D 10D: one_pair"     "2D 3H 5S 6S QD: high_card"    
#> [15] "2D 4H 4S JC KS: one_pair"      "4H 5D 8S JH KC: high_card"    
#> [17] "3H 7H 8S 9S AH: high_card"     "2D 3C 5D 6C 10D: high_card"   
#> [19] "2C 2D 7S 10S QC: one_pair"     "2D 8C 9D 10S KD: high_card"   
#> [21] "2C 3H JC KC KD: jacks_better"  "3S 5S 8S JS AC: high_card"    
#> [23] "4C 8D 9H 10C AC: high_card"    "3H 5S 6D 8H 9H: high_card"    
#> [25] "3C 6H 7D 8D 9C: high_card"     "QD KD KH AH AC: two_pair"     
#> [27] "3S 7S 9C 10C KD: high_card"    "10H 10S JD JS QH: two_pair"   
#> [29] "3C 4D 7S KH AC: high_card"     "6D 7S 10H QC AS: high_card"   
#> [31] "2C 2H 9C KH AH: one_pair"      "10H QC KH AC AS: jacks_better"
#> [33] "3C 3S 5C 5D KC: two_pair"      "4S 6D 6S 7C 8D: one_pair"     
#> [35] "2C 3D 5C QD QC: jacks_better"  "8S JS QH KC KH: jacks_better" 
#> [37] "3H 5S 6S 9D 9C: one_pair"      "2C 2D 5D JD KC: one_pair"     
#> [39] "2S 4D 4C 8S QD: one_pair"      "4C 7D 7C JS KH: one_pair"     
#> [41] "8C 9H 10H QH AS: high_card"    "2S 3C 6D 9D JH: high_card"    
#> [43] "3S 4H 7C QS KS: high_card"     "2C 7D 8S JD QD: high_card"    
#> [45] "4C 5S 6H 6D 7H: one_pair"      "3C 5H 7D 8S AS: high_card"    
#> [47] "6D JD QC QH AD: jacks_better"  "3S 3H 4C 10S AD: one_pair"    
#> [49] "2D 5H 5C 8H 9H: one_pair"      "3D 4D 6S 8C JC: high_card"
```
