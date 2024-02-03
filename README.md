
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
#>  [1] "AC JH 9S QD KS: high_card"    "TH QS 4H 2S 9H: high_card"   
#>  [3] "AC 2D QS 9C KC: high_card"    "JD 4D 5D 6H JH: jacks_better"
#>  [5] "9S AH 4D QC 6S: high_card"    "TS JC 2H QD 6C: high_card"   
#>  [7] "JC JH TS 7S TC: two_pair"     "AS 2D JC 6D AD: jacks_better"
#>  [9] "QD 2D 6S JH 7H: high_card"    "6H TH 8S AD 5C: high_card"   
#> [11] "AD JD 8C 4C 6S: high_card"    "KH JS 5D 3C QD: high_card"   
#> [13] "7C JH 2H QD KS: high_card"    "AH JC 4S 5S 4C: one_pair"    
#> [15] "TS 5S 9S JS 8C: high_card"    "6S 2S 7C QC TC: high_card"   
#> [17] "3C 2C QS 8D KS: high_card"    "6H 2S QD 3D KH: high_card"   
#> [19] "9D 6C AD 4C KH: high_card"    "7H TS 3S 9C 7S: one_pair"    
#> [21] "QH 7C 5H 7D QS: two_pair"     "3S 7C JC TC 4D: high_card"   
#> [23] "TH QS 8C 8H 2H: one_pair"     "QS 3C 8S 4H 5C: high_card"   
#> [25] "AD 3H 7H TS KC: high_card"    "4D 2H QD QH 6C: jacks_better"
#> [27] "TD KC JH 9D 4S: high_card"    "TH 4H JD 3D 7H: high_card"   
#> [29] "JD JC TC 3D AC: jacks_better" "5D AH 6H JS KS: high_card"   
#> [31] "8H 6S 6D 4S 5D: one_pair"     "6C 9S 3S 2S TH: high_card"   
#> [33] "7C AD 2H QD TS: high_card"    "QC KD KS JS 7C: jacks_better"
#> [35] "4D 6S 9C 9H KS: one_pair"     "7S TS KH TH 8C: one_pair"    
#> [37] "6D 3H KC 8S 6S: one_pair"     "3C 5H 3S 9D 4S: one_pair"    
#> [39] "JC 3D 3H 9H QD: one_pair"     "8S JS QS AS 5S: flush"       
#> [41] "6D 2S KD 5H 6H: one_pair"     "9D 2S 9C JC AH: one_pair"    
#> [43] "7H 8H JH 7S 8C: two_pair"     "TD JC 2H 2D 7H: one_pair"    
#> [45] "9S AH 2D JD 9H: one_pair"     "TS 3S KD 2C 9C: high_card"   
#> [47] "6H 7D KS QC KH: jacks_better" "QS AH 8C 8S QH: two_pair"    
#> [49] "JD 7D 7S JC JH: full_house"   "TS 5D 4D AH 2H: high_card"
```
