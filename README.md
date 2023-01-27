
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
  paste0(print_hand_df(hand), ": ", eval_hand_df(hand))
})
#>  [1] "2S 2C 3H 4S JC: one_pair"      "3D 4D 5H 6C 10S: high_card"   
#>  [3] "2S 8D 9C 10C AH: high_card"    "2D 4D 10H JS JC: jacks_better"
#>  [5] "2H 3D 7S QD AC: high_card"     "2C 4C 8D 9C KD: high_card"    
#>  [7] "7C 7S 8H JS AD: one_pair"      "2D 5D 9H 9S QC: one_pair"     
#>  [9] "2C 3S 6D 9H QH: high_card"     "2D 8S QS KD KS: jacks_better" 
#> [11] "8C 9D 9H 10D QH: one_pair"     "2C 7C 9H 9S KC: one_pair"     
#> [13] "3S 9D JH KH AH: high_card"     "4D 5D 6D 9D KD: flush"        
#> [15] "4C 5H 6D QS QC: jacks_better"  "2D 3S 3C QC KS: one_pair"     
#> [17] "4H 7D 8D QS KC: high_card"     "3C 8S JC JS QD: jacks_better" 
#> [19] "2S 5C 9D 10C KS: high_card"    "2H 7H 7C 8D AD: one_pair"     
#> [21] "2D 5S 8S 9H KH: high_card"     "2S 4H 7H JC AC: high_card"    
#> [23] "4C 8H 9D AC AD: jacks_better"  "3H 3S 7D 10H QS: one_pair"    
#> [25] "4D 5H 6C 8C 9D: high_card"     "7C 9H JS JC KD: jacks_better" 
#> [27] "2H 3C 4H 5C QC: high_card"     "4S 5C 5D JS AS: one_pair"     
#> [29] "4D 7D 7S QC QH: two_pair"      "7C 10S 10D JH JD: two_pair"   
#> [31] "7S 8D 9S 10S JH: straight"     "4C 6S 7C 8D 10H: high_card"   
#> [33] "3H 3C 5C 7S 8S: one_pair"      "5H 6S 7S AD AS: jacks_better" 
#> [35] "5H 6S 8D 9S 10D: high_card"    "3C 4C 7C 8H 10C: high_card"   
#> [37] "3D 6D 7H 10S AD: high_card"    "2C 10D 10H QD KD: one_pair"   
#> [39] "JD JH JC KH AH: three_ofakind" "3S 9C 9S QH KH: one_pair"     
#> [41] "2S 5C 10D JH AH: high_card"    "5H 6H 6D 8S QS: one_pair"     
#> [43] "4H 5D 7H QS KH: high_card"     "7H 9C 10H 10C QC: one_pair"   
#> [45] "5D 6D 9C 10S AC: high_card"    "3H 8S 9S 10S QS: high_card"   
#> [47] "9C JC QH KH AC: high_card"     "8D 9D KC KS AS: jacks_better" 
#> [49] "2D 3D 7H 9S KH: high_card"     "7S 7H 8H 9H 10H: one_pair"
```
