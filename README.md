
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
# install.packages("remotes")
remotes::install_github("jabenninghoff/cards")
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
#>  [1] "5C 7D TD 9S 8S: high_card"    "KH 4H JS 9H QD: high_card"   
#>  [3] "5S JC JD 6H TC: jacks_better" "QC KH 8H 3S KD: jacks_better"
#>  [5] "3S 9H 2H 4C 6C: high_card"    "7H 6C JC 6H 2D: one_pair"    
#>  [7] "3S 7H 4S 9D 9S: one_pair"     "9C TD KC 6H 6D: one_pair"    
#>  [9] "6C 7S 3D 4D 8D: high_card"    "7D 2C 3D 9C 2D: one_pair"    
#> [11] "2S TH 9S 4S 8H: high_card"    "3S KC TS 2D 4D: high_card"   
#> [13] "6H 5H AS KD JS: high_card"    "AH 3S KC 9S 3C: one_pair"    
#> [15] "5D 4D 3D QH JS: high_card"    "3C AD KC 2C 8H: high_card"   
#> [17] "TS 7H 2H TH 4S: one_pair"     "5H 2H QC 8C AD: high_card"   
#> [19] "7S QH 9C JD KS: high_card"    "AH 2C 4H 7S 7H: one_pair"    
#> [21] "4D 4C KS JD 9C: one_pair"     "TH 8C KD JC 5D: high_card"   
#> [23] "3H 8C 8H KC 9D: one_pair"     "3S 7H 9H AS QH: high_card"   
#> [25] "JH AC 3D QC 9D: high_card"    "2D 6S JC 5D KH: high_card"   
#> [27] "7H TC 8C 2D 2H: one_pair"     "6H KH 9S JH 8C: high_card"   
#> [29] "TD 9C 9D 3S 3D: two_pair"     "2H QD JD TS 7S: high_card"   
#> [31] "5D 2C AH QD 5S: one_pair"     "TH 3D 8S TD 7S: one_pair"    
#> [33] "2S 8H KH 3D AS: high_card"    "5D 2S KD 7C 3S: high_card"   
#> [35] "JD QH 7H QC 4S: jacks_better" "7C 8H 4H 5H 3D: high_card"   
#> [37] "TD 2C 2H TC 8C: two_pair"     "9D TH AH 7D JH: high_card"   
#> [39] "3D 6C 5H 8C JS: high_card"    "9C TS 3C QH AD: high_card"   
#> [41] "4D TS 6S 9H QH: high_card"    "JC AH TD 9C TH: one_pair"    
#> [43] "4C JS 4D KC KD: two_pair"     "7C JH TS 2D TD: one_pair"    
#> [45] "4H JS 7D KH JH: jacks_better" "KC QC 6H 2D QS: jacks_better"
#> [47] "7H JH 2S QS 5H: high_card"    "TS 7H 8S 3D TC: one_pair"    
#> [49] "QS 2H JS AC 9C: high_card"    "4D TS QH 9H AH: high_card"
```
