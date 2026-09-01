
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cards <img src="man/figures/logo.png" align="right" alt="logo" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/jabenninghoff/cards/workflows/R-CMD-check/badge.svg)](https://github.com/jabenninghoff/cards/actions)
[![lint](https://github.com/jabenninghoff/cards/workflows/lint/badge.svg)](https://github.com/jabenninghoff/cards/actions)
[![Codecov test
coverage](https://codecov.io/gh/jabenninghoff/cards/graph/badge.svg)](https://app.codecov.io/gh/jabenninghoff/cards)
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
#>  [1] "4H TS QH KS AS: high_card"    "8C 7S 3C 4H AH: high_card"   
#>  [3] "4S 9C TC KC 2D: high_card"    "7S KH TC QD AS: high_card"   
#>  [5] "2C 8H 2H QH 9H: one_pair"     "AH AC 6S 8S 5D: jacks_better"
#>  [7] "9D 7D 2H TS KH: high_card"    "4S 8C 4H 3D 7S: one_pair"    
#>  [9] "6D 4C AC 6S 9S: one_pair"     "2C 9H 3D 5H 6D: high_card"   
#> [11] "TC 6H 5H 7D 4D: high_card"    "TD AH TH 5D JD: one_pair"    
#> [13] "AC 6D KS 2C 8D: high_card"    "8S KD 5D 7H AS: high_card"   
#> [15] "KC QH QS 4H AC: jacks_better" "JH 4C 8C 7H 6D: high_card"   
#> [17] "8H AH JS KH 2D: high_card"    "4H 2C 9H 6C 8C: high_card"   
#> [19] "8C 5S QD QS 6D: jacks_better" "9H AS TC QD 6H: high_card"   
#> [21] "KC 6D 8H 7S AS: high_card"    "QS KS 9C 6C QH: jacks_better"
#> [23] "QH KD 9S KC QS: two_pair"     "JD 5D 3S 4D 8H: high_card"   
#> [25] "4D 2D KC 5C 3C: high_card"    "7H 3C 8C 5D 4S: high_card"   
#> [27] "4C AC 2D QD 6D: high_card"    "5H 5D KH 6H 9C: one_pair"    
#> [29] "4D 7S 6S 2S QD: high_card"    "8C 9D 2D TC 5C: high_card"   
#> [31] "4S KD AH 2H 4C: one_pair"     "KC AH 9D QS JS: high_card"   
#> [33] "TH 7H 5D 9D AS: high_card"    "TD AD 7C TC JH: one_pair"    
#> [35] "9C 7D TH 2S KC: high_card"    "JH 6H TS 2C TD: one_pair"    
#> [37] "3C JC 9D 5H QH: high_card"    "5H 7S 7D TH TD: two_pair"    
#> [39] "3S AH 2H TS 9S: high_card"    "3C AC QS QH 5D: jacks_better"
#> [41] "2D KD AD 8C 3S: high_card"    "JS 3D 6D 3H 5D: one_pair"    
#> [43] "8H QS KH 5S 2H: high_card"    "AC 6C TC AS 8H: jacks_better"
#> [45] "TC JC 6C 3D KD: high_card"    "8S 6S 2H 7C 4C: high_card"   
#> [47] "JS 6D AH QC 7C: high_card"    "9D JH 2H 8D 8C: one_pair"    
#> [49] "3D JC AH 7D TC: high_card"    "QH JD AH 6H 7S: high_card"
```
