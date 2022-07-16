
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
#>  [1] "6H 7H 9D QD KS: high_card"     "5C 5S 6H 8C 8H: two_pair"     
#>  [3] "3D 5S 9H JH KH: high_card"     "2H 3S 8D 9D 10C: high_card"   
#>  [5] "2C 4H 9S JD QD: high_card"     "3C 8C QC QS AH: jacks_better" 
#>  [7] "3H 8S 8D 9S AS: one_pair"      "4D 6H 7S AS AH: jacks_better" 
#>  [9] "3H 4S 5H 9S AD: high_card"     "5H 5S 6D 8C 9S: one_pair"     
#> [11] "8D 9D JS QC QH: jacks_better"  "3S 8C JC JS QD: jacks_better" 
#> [13] "3D 8S 10S JC QH: high_card"    "2D 5H 6D QC QD: jacks_better" 
#> [15] "2S 3D 6C 9D JC: high_card"     "2S 2C 4S 9S 9H: two_pair"     
#> [17] "8S 8D QD KS AC: one_pair"      "2C 4C 7D JS KS: high_card"    
#> [19] "2D 4C 5D 5H 10C: one_pair"     "2H 6H 8C 9H JC: high_card"    
#> [21] "5H 7D 9C 10H QC: high_card"    "5D 7H 9C 10H AD: high_card"   
#> [23] "6C 8C 8H 9S QS: one_pair"      "2S 10S JS QH KH: high_card"   
#> [25] "5H 6D 8H JS KS: high_card"     "3S 5C QS QD AS: jacks_better" 
#> [27] "2D 6H 6C JD QS: one_pair"      "5S 6S 8C KC AH: high_card"    
#> [29] "2D 3D JH QC AC: high_card"     "4C 8H 10S JS AS: high_card"   
#> [31] "3H 7H 7C 10D KC: one_pair"     "6C 7S QS AC AH: jacks_better" 
#> [33] "2C 4C 10H 10D JC: one_pair"    "3H 3S 5H 10C JS: one_pair"    
#> [35] "6S JC QC KC AC: high_card"     "3D 8S JH AC AD: jacks_better" 
#> [37] "8C 8S 9D JH AD: one_pair"      "3S 4C 7C 7D JD: one_pair"     
#> [39] "2H 3H 9H 10D JD: high_card"    "2C 3H 4S 6C 9C: high_card"    
#> [41] "3C 4C JS QC AD: high_card"     "4H 6S 9C 10H 10S: one_pair"   
#> [43] "7H 10D 10S JD QS: one_pair"    "3D 7S 10D JC AC: high_card"   
#> [45] "5C 6S JC JS QH: jacks_better"  "6D 9S 9H 10C AS: one_pair"    
#> [47] "8D 9C 9D 9S JC: three_ofakind" "4D 6S JS JH QS: jacks_better" 
#> [49] "2S 4C 6S 7C 7H: one_pair"      "2D 7D 10C 10D QH: one_pair"
```
