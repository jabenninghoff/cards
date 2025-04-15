
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
#>  [1] "3C AC AH 4S 2H: jacks_better" "AH 4D JC 6D JH: jacks_better"
#>  [3] "QD JC 9C KD 6C: high_card"    "5C 7H 4D AH JS: high_card"   
#>  [5] "7D 8H 6H 3H KD: high_card"    "JD JC AC 3C 9D: jacks_better"
#>  [7] "3D 7S 7H QC 2C: one_pair"     "QC TC 8C 6S 5D: high_card"   
#>  [9] "5H 7D 3H 2S QH: high_card"    "7S 4C 5D 8H 6C: straight"    
#> [11] "4S JD AD 2H 9S: high_card"    "TC 7D QD 8C 3S: high_card"   
#> [13] "3C 7C 5D 6C 6H: one_pair"     "KH 9D 3S 8D 8S: one_pair"    
#> [15] "AH TC QD 8H JH: high_card"    "KH QS AD 7S TH: high_card"   
#> [17] "6H 5C 3C 7D 8D: high_card"    "7D 3D 3H 8D 5S: one_pair"    
#> [19] "8C 5S 2S 5H TS: one_pair"     "7D 8C JC 2C 5D: high_card"   
#> [21] "9H 9S 2H 3C 3S: two_pair"     "8H 6C 3S 6D 9H: one_pair"    
#> [23] "2S 7D 4C JS 4D: one_pair"     "JD JH 6C 2D 3S: jacks_better"
#> [25] "QD 4C KH 4D QH: two_pair"     "TS JD 7S 3S 4D: high_card"   
#> [27] "2S 7H 4C 6S TS: high_card"    "2S 4D 8C TH 4S: one_pair"    
#> [29] "5S AD TD 8D 9H: high_card"    "AS 6S TH KD 9D: high_card"   
#> [31] "5C 3C 8H 8S 3S: two_pair"     "7C 6D 3H 9D JS: high_card"   
#> [33] "3D 3S KC KS 9D: two_pair"     "9C 8D 5C 6H 4H: high_card"   
#> [35] "5H 3H 7C 4H 5S: one_pair"     "QS 5H 6C TC 2C: high_card"   
#> [37] "5C 9H AS 9C TS: one_pair"     "5C 7C 2C 6H QH: high_card"   
#> [39] "7S KD 4D 8H 5D: high_card"    "AH 7S 3D JD TD: high_card"   
#> [41] "JH 8C 6H KS JD: jacks_better" "3S 4S AH 2S 5D: straight"    
#> [43] "AC 3S 9C AD JH: jacks_better" "5S 4D 9S 4H KD: one_pair"    
#> [45] "TC 7D 8C 9S 2S: high_card"    "QD 3D JC 7S 4S: high_card"   
#> [47] "4H 3S 6S 6C 3C: two_pair"     "6H TH KS AD 4H: high_card"   
#> [49] "3S 3D TC 5C 6S: one_pair"     "6S 8C 9H TC 5S: high_card"
```
