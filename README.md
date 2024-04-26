
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cards <img src="man/figures/logo.png" align="right" alt="logo" width="120" />

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
#>  [1] "7H 9C 2D 4H TH: high_card"    "7C 3S AS KC JS: high_card"   
#>  [3] "KS 5S 3D 2H 3H: one_pair"     "9C 4H 8S AD 5S: high_card"   
#>  [5] "TS QH 6H 3S TH: one_pair"     "JD TS 4D AS QC: high_card"   
#>  [7] "8H 6S 8C KS 6H: two_pair"     "2H 8H 3S 2S 9H: one_pair"    
#>  [9] "TS KD 3S 6H 9C: high_card"    "TC AD 7D 5C 4C: high_card"   
#> [11] "TD 7D 6H 6C 3H: one_pair"     "TC 6H 2S 8C 3S: high_card"   
#> [13] "6D 8D 6S JD 4C: one_pair"     "TH TS 5D 7D 9H: one_pair"    
#> [15] "KH 5D 7D 3D 8D: high_card"    "JD 9H 8H 9S TH: one_pair"    
#> [17] "7C 4C 4S 6D AC: one_pair"     "KC 7S 3C KD 8H: jacks_better"
#> [19] "7C AD 6H 8H 8S: one_pair"     "AC TD 2D JS 9H: high_card"   
#> [21] "QC 4D 6S 9S 8D: high_card"    "7S TS JD JH 6H: jacks_better"
#> [23] "KS KC 2H 9H JC: jacks_better" "6S 9H QH 4S 7C: high_card"   
#> [25] "JS 5H 3S QH 4D: high_card"    "9D 3C 6C 8S 4H: high_card"   
#> [27] "7D TC QD 8H JH: high_card"    "8C 4C QS 3H QC: jacks_better"
#> [29] "7S 4D KS 4C 6D: one_pair"     "QS AD 9C 4C 5H: high_card"   
#> [31] "QS KS 6C KH 9H: jacks_better" "JD 6C QS 8S 4D: high_card"   
#> [33] "3H 4C 5C 5S 2S: one_pair"     "KH JS 7H 3H 4S: high_card"   
#> [35] "7D 7H TS 5C QD: one_pair"     "3C 9S 6H 4H 9H: one_pair"    
#> [37] "2H 3H 7C JS 5S: high_card"    "7C 5D 6C QH 4C: high_card"   
#> [39] "JH 8H 4H 2D 6S: high_card"    "KH 2D 2C QH 4C: one_pair"    
#> [41] "9C 3C JD 7S 3D: one_pair"     "JH 4S 5D 5H 6H: one_pair"    
#> [43] "7H KC QH AH QS: jacks_better" "4S 6D 6S QC AD: one_pair"    
#> [45] "7D 9H 7S KH 8C: one_pair"     "7S 9D 6D AS AD: jacks_better"
#> [47] "2S 8S 5S AD TH: high_card"    "QH QC 3H 9H KD: jacks_better"
#> [49] "AC KD JC JS 6C: jacks_better" "TH 2C 4H 6H 8C: high_card"
```
