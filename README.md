
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
#>  [1] "TC 5C KD 7C QH: high_card"     "AD JS 9C 3H 6D: high_card"    
#>  [3] "6C 7H KD 5S 3D: high_card"     "JC 5S 9C 6D 9S: one_pair"     
#>  [5] "JD 9D 8H 8C QD: one_pair"      "KC 8H 2D 9C TS: high_card"    
#>  [7] "7C AS JD 6S 3S: high_card"     "JC 4C QH 9C KH: high_card"    
#>  [9] "AH 5S 3S 7S 4H: high_card"     "9H KS JH JS 8C: jacks_better" 
#> [11] "AS 6H QD JS QS: jacks_better"  "8S 8H QC 2H 9D: one_pair"     
#> [13] "3H 4C AH 5S JS: high_card"     "TH JH 7D KS 5C: high_card"    
#> [15] "TC 3H JH AS 2S: high_card"     "4S 8C 4C 9D KH: one_pair"     
#> [17] "5C 9H JS 4D 4S: one_pair"      "9S JS 5H AS AH: jacks_better" 
#> [19] "AC KD KS 7S 6C: jacks_better"  "4C 3S 4S 3C 7S: two_pair"     
#> [21] "JS 7D AH 5S 3D: high_card"     "JH QC 4H 2H 3C: high_card"    
#> [23] "QS 2D 7C 6S TS: high_card"     "9D 7S AS QH 8D: high_card"    
#> [25] "9H QS JD 3C AD: high_card"     "JH 7S TS 7D KC: one_pair"     
#> [27] "8H 6S JH QD 8D: one_pair"      "QC AC 7S 7H 5S: one_pair"     
#> [29] "TH 2S AD TS QC: one_pair"      "AS QD TH TC 3S: one_pair"     
#> [31] "9D 7C JH 6H 4C: high_card"     "QD TS 9D 9S AS: one_pair"     
#> [33] "3H 4C 7S TH TD: one_pair"      "6S 3H TC QH 5H: high_card"    
#> [35] "AH TS QC JS TC: one_pair"      "6C 4C AS TC 7D: high_card"    
#> [37] "3S 4C 3H 5D 6H: one_pair"      "3H JC AD 3D AC: two_pair"     
#> [39] "5D TD 6H JH 5H: one_pair"      "6C QH 2C KH 2S: one_pair"     
#> [41] "KH JD KD QH TH: jacks_better"  "3S 6S TH KD KC: jacks_better" 
#> [43] "9C QD 9D 2C KS: one_pair"      "8D 9D 7H 5D 4C: high_card"    
#> [45] "4C 7C QD 2C 8D: high_card"     "6C KC QD TC TS: one_pair"     
#> [47] "QH 6C 6H JH 6S: three_ofakind" "8D TS TC 8C 2D: two_pair"     
#> [49] "4H 7S 8D 4C 5H: one_pair"      "AS KS 5C TS 7S: high_card"
```
