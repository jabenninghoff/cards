
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
#>  [1] "7D 7C 8C 8D KD: two_pair"       "5H 6D 8H 10S QD: high_card"    
#>  [3] "2D 6D JD QS KD: high_card"      "8C 9D 9C 10S AH: one_pair"     
#>  [5] "4C 8S 9C 10H AC: high_card"     "2C 4D 5C 7C 10S: high_card"    
#>  [7] "6D 10S QD QH QS: three_ofakind" "3C 3D 5S 10D KS: one_pair"     
#>  [9] "2C 3S 7S 10S AD: high_card"     "2D 3D 9C 10S QD: high_card"    
#> [11] "6H 8H 9H 9C AC: one_pair"       "3C 5C 8S 8H JC: one_pair"      
#> [13] "4H 4S 10H KH AH: one_pair"      "2H 3H 6H KC AS: high_card"     
#> [15] "4D 5D 7C 8C JC: high_card"      "7H 8C 8H JH KD: one_pair"      
#> [17] "6H 8D QC KS KD: jacks_better"   "3H 3S 6S KS AS: one_pair"      
#> [19] "7C 8H 9S 10C AH: high_card"     "3S 7C 8C JD QD: high_card"     
#> [21] "2S 3S 3D 7D 8D: one_pair"       "4C 7D 10D JC QH: high_card"    
#> [23] "5D 7C 8S JS AH: high_card"      "3C 5H 6S KC AH: high_card"     
#> [25] "4D 6H 8D KH AH: high_card"      "4D 8C JC QD QC: jacks_better"  
#> [27] "3S 4D 6D QH AS: high_card"      "3S 5D 7S 9S JS: high_card"     
#> [29] "3H 7C 8H 10C KD: high_card"     "5H 10C QS AH AD: jacks_better" 
#> [31] "3S 4H 9S 10H QS: high_card"     "4H 6C 6H AD AS: two_pair"      
#> [33] "2C 3H 4C 7S 9H: high_card"      "3H 8H JC JS KH: jacks_better"  
#> [35] "4S 6C 6D 9S AD: one_pair"       "2C 3S 5S 5D 6S: one_pair"      
#> [37] "4S JS QS KH KC: jacks_better"   "7D QS QC KS KD: two_pair"      
#> [39] "2C 5D 6C QH KD: high_card"      "2S 7H JC QH AD: high_card"     
#> [41] "7S 9H 9C KC KD: two_pair"       "3S 7D 7S 9H KD: one_pair"      
#> [43] "2C 4C 8C 10S AS: high_card"     "5H 5D 6D 9S 10D: one_pair"     
#> [45] "4H 5S 7C 7D 9D: one_pair"       "3D 5S 6H 8D 9D: high_card"     
#> [47] "2D 6H 6D AC AS: two_pair"       "5C 7H JD QD KH: high_card"     
#> [49] "5D 6D 8H 9S AS: high_card"      "2D 5H 6D JD QD: high_card"
```
