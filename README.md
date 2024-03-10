
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
#>  [1] "3S 6S 3D JD TH: one_pair"     "6S 6H TD JD 8D: one_pair"    
#>  [3] "9H AD 5H JH 7C: high_card"    "AC 3S JC 2H QH: high_card"   
#>  [5] "TC KS 4C 4D QS: one_pair"     "QD 8H AH 2S TH: high_card"   
#>  [7] "9H JD TS 5C JC: jacks_better" "7D 2C 8H 6H 5D: high_card"   
#>  [9] "9S 7S 5C 7H 3D: one_pair"     "QH JD 9D 6C QC: jacks_better"
#> [11] "4H 7H AC QC 3S: high_card"    "8S JH 8D 9C JS: two_pair"    
#> [13] "5H 7D 8S 2C QH: high_card"    "KC 5H 4D 5C 8C: one_pair"    
#> [15] "JD QC 8D 8S TH: one_pair"     "KS 6H KC 7S 4H: jacks_better"
#> [17] "6H JH 4H 3H 6D: one_pair"     "5C 7D 9C 5S JH: one_pair"    
#> [19] "3H TD 5C 2C 2H: one_pair"     "TS 2C JH JS 4H: jacks_better"
#> [21] "9S 6S QC 3D KH: high_card"    "5H 9H 9C 4S KD: one_pair"    
#> [23] "7C TC 5H AC JH: high_card"    "JC TD AS QC QH: jacks_better"
#> [25] "2C QH 3C KC 4H: high_card"    "4D 3D JS 7H QS: high_card"   
#> [27] "5S 8S 3H QD JD: high_card"    "QD AH 3D KS TC: high_card"   
#> [29] "9H 5S 4S 7H 2D: high_card"    "2D 6D 7H AH 6C: one_pair"    
#> [31] "6H 2S JD 8D QH: high_card"    "QH KD 5C 7S 6S: high_card"   
#> [33] "5H 7D 4S JS KH: high_card"    "8D JS AH 3D TC: high_card"   
#> [35] "4S KC 9S 6C TC: high_card"    "4H TC 8C 4C KD: one_pair"    
#> [37] "QS JS 9D 2H 3H: high_card"    "QC 9H QS AH 7D: jacks_better"
#> [39] "QD TS 2H 6S TC: one_pair"     "3S TS QC 8S 6C: high_card"   
#> [41] "7H 8C KS 8H QS: one_pair"     "6D 9D JH TS 4S: high_card"   
#> [43] "3D 5D 3H KD JS: one_pair"     "JC 2H 2S AH 5C: one_pair"    
#> [45] "TH 4C KD 8D 9H: high_card"    "3S AS 5S 8S 8D: one_pair"    
#> [47] "3S 8H 9C 6H KH: high_card"    "3C 4S 9H 8H 9D: one_pair"    
#> [49] "AH 6H KS AC 6C: two_pair"     "JS 7C QD 7S 8S: one_pair"
```
