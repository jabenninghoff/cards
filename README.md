
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
#>  [1] "5S 2D 3D 6H 7C: high_card"    "9H JS 7C JD 5D: jacks_better"
#>  [3] "TD KC 8H 6D 5H: high_card"    "2C 5D AH JC 6H: high_card"   
#>  [5] "3C JC TC 9C 2D: high_card"    "TD 6D AD 7C KC: high_card"   
#>  [7] "JC JD 7D QD 8C: jacks_better" "5S 8H 7D 8D KS: one_pair"    
#>  [9] "2D 4D 6D 6S 5S: one_pair"     "AC 8C 7C QS 4C: high_card"   
#> [11] "JD 3D 3S 8S JC: two_pair"     "3H 4H JD 9D 6S: high_card"   
#> [13] "QS 2H 5H TD JH: high_card"    "KD 4C 2D QC 8H: high_card"   
#> [15] "9C 9H 2D TS TH: two_pair"     "9C AD AS 4S 2S: jacks_better"
#> [17] "QD 6H QC TH 6C: two_pair"     "AS 5C 3C 8D 2C: high_card"   
#> [19] "TH KD 6C 9H 9S: one_pair"     "7C 6H 3H 9H 4C: high_card"   
#> [21] "TH 6D AH 6C 8C: one_pair"     "7S JC 3H 2C 2H: one_pair"    
#> [23] "JH 6H 9C 9H 6C: two_pair"     "3C 2H TH JS JD: jacks_better"
#> [25] "2H AS 9D 4C 5S: high_card"    "4S JD 2H 9H 3C: high_card"   
#> [27] "AC 2H 9H KD JC: high_card"    "7D AC 8C 2D 3H: high_card"   
#> [29] "8H QD KS 2S 7S: high_card"    "2S QD QS AC TH: jacks_better"
#> [31] "8H KC 5S 5H 7S: one_pair"     "7H QH 4H 4C TC: one_pair"    
#> [33] "AD TS 4S JD QD: high_card"    "JC 7D 5D 2C JH: jacks_better"
#> [35] "JC 5C 2H 2D 8H: one_pair"     "KH 4H QH TS 8S: high_card"   
#> [37] "TH TD JD 3S 2D: one_pair"     "3D 9C 8D 2S 8C: one_pair"    
#> [39] "AD JC 3D 2C AC: jacks_better" "JD 2H 8S AS AC: jacks_better"
#> [41] "4S TH 9C 8D 3S: high_card"    "2D 9D 3D 3H 8S: one_pair"    
#> [43] "AH QH 9H 7H QC: jacks_better" "9C 4S 5C 5S 4C: two_pair"    
#> [45] "QH KD JS TC 9D: straight"     "4H 9H KS JS 9S: one_pair"    
#> [47] "9S QS 9D TC 4S: one_pair"     "AS 4S TH 7S KD: high_card"   
#> [49] "9C JC 3C 2S 9S: one_pair"     "4C 3S 7S JS 2D: high_card"
```
