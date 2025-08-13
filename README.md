
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
#>  [1] "5C QC TH AD 6H: high_card"     "7D 2H 4C 5H 9H: high_card"    
#>  [3] "QC 4S 3S 6D 5S: high_card"     "8H AS JH 4S 4D: one_pair"     
#>  [5] "8S 7S KD 7C 2H: one_pair"      "2D 4S KC 4C QC: one_pair"     
#>  [7] "3D 7H 4S KC 6D: high_card"     "AC JD 2S 2D 7D: one_pair"     
#>  [9] "TS 4S 3C 4D 5D: one_pair"      "JH 3C KC TC 9H: high_card"    
#> [11] "QS JC 5S 5C 9H: one_pair"      "TH JH 7C 5S 2S: high_card"    
#> [13] "3S 9C 4C 6H 2S: high_card"     "QH QC 3C 4H 9C: jacks_better" 
#> [15] "AD KD 7C QS TC: high_card"     "8H 7S 5C 4C 8C: one_pair"     
#> [17] "KC 3C 4S KS AC: jacks_better"  "4H 6D 4D 8H QD: one_pair"     
#> [19] "JS TC 2S 5C 7C: high_card"     "6D 7H 5S 9C 3C: high_card"    
#> [21] "2D 8H AD 2S 7C: one_pair"      "AC QH JD AS AD: three_ofakind"
#> [23] "JC JS 2C 7H AC: jacks_better"  "8S 5S 3C 4D 2S: high_card"    
#> [25] "QH 8H AS 6S 8D: one_pair"      "8D 9H QD KS JD: high_card"    
#> [27] "AC 7D 5C 9C 3D: high_card"     "AS 3H 5H 5D 3S: two_pair"     
#> [29] "8S 9D 9H 8D 3D: two_pair"      "7S 5D 4H AD 4D: one_pair"     
#> [31] "9S 4D 9C AD 8H: one_pair"      "4H QD TC 7D 7C: one_pair"     
#> [33] "7S 9S 3C QH TD: high_card"     "KD KH 2H 3D QH: jacks_better" 
#> [35] "2C AD 7H TH 4D: high_card"     "8C 4D JC QH QC: jacks_better" 
#> [37] "7H KC 6D 5S JD: high_card"     "TD 8C JS 4H 3S: high_card"    
#> [39] "6S 7C 3C TC JD: high_card"     "TC 9D JH 2D KD: high_card"    
#> [41] "6S 9D JH AC AD: jacks_better"  "AH 9S QH 6H 4C: high_card"    
#> [43] "6D JS 3H JC 4H: jacks_better"  "TC JH TH 4S QC: one_pair"     
#> [45] "AS 3C QC 5S 8C: high_card"     "4C KH 3S 7C 8D: high_card"    
#> [47] "TH QD KH KD 9D: jacks_better"  "6H 5S 2S 8D JD: high_card"    
#> [49] "8C 6S 9H AH 3D: high_card"     "JS 4C 8D KC 6C: high_card"
```
