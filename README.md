
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
#>  [1] "JH QS 7D 3C QD: jacks_better"  "6D TC 9D 3C 4D: high_card"    
#>  [3] "8H KH 7C AD 3D: high_card"     "6C 7S 7C TD 3D: one_pair"     
#>  [5] "KS 8S JS JD 3D: jacks_better"  "JD TC 5D 3C JS: jacks_better" 
#>  [7] "9S TC AH 3H 7C: high_card"     "4C 5H AS 9S KD: high_card"    
#>  [9] "AC 9C KH 5S AD: jacks_better"  "6H 2C 5H 7S JH: high_card"    
#> [11] "7H AS 3H JD TS: high_card"     "8D 4H 3D AS 9D: high_card"    
#> [13] "2C KC 2H 3H QC: one_pair"      "3S 6S 6D 5C 9D: one_pair"     
#> [15] "6S JH 7C TS 4D: high_card"     "4H 6C TH AC 3H: high_card"    
#> [17] "KH 9D 7S 8S 5D: high_card"     "3D KS TS JC 6S: high_card"    
#> [19] "KC 2S 9C AS 9H: one_pair"      "6D 8D KH TH 8C: one_pair"     
#> [21] "KC AH 9D 3D 5C: high_card"     "8C 3H 8H 7C KH: one_pair"     
#> [23] "9S QD 9C 7H 2C: one_pair"      "2D 8S 9S 3C AH: high_card"    
#> [25] "JC 2D TS 3C QS: high_card"     "JC 5D JD 8H 5C: two_pair"     
#> [27] "6C TC AH 8H 3D: high_card"     "KS 8D 5C 9S 2S: high_card"    
#> [29] "QD TC 6D 9S 4S: high_card"     "KD KH 8C 8D 5S: two_pair"     
#> [31] "9C 5H 5D 5C TC: three_ofakind" "KS 5C 6D QD 4C: high_card"    
#> [33] "QH 9S 4C AC 7D: high_card"     "3D 8H TD 9H 4H: high_card"    
#> [35] "8H 8S 6D 4C 9S: one_pair"      "2D JH 6D 7H 8S: high_card"    
#> [37] "5C TS 2D 3H 6C: high_card"     "TS 3S JC 8C QD: high_card"    
#> [39] "8H 2D 8S 6C 8D: three_ofakind" "8C 4S AH 2H 9S: high_card"    
#> [41] "6H 2C 6S 4S KS: one_pair"      "2D AD 5S 8H 5D: one_pair"     
#> [43] "2H 7C JD QC JC: jacks_better"  "5S 5C 9H 7H 6H: one_pair"     
#> [45] "AD 4S 5D 4H 4C: three_ofakind" "5H 8D 3C KS QD: high_card"    
#> [47] "7H 7D 2H QC 2C: two_pair"      "JC KC AD 2D QC: high_card"    
#> [49] "8D JD AS 7C 5D: high_card"     "4S QS 5D KS 8C: high_card"
```
