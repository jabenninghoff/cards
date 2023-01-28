
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
# install.packages("devtools")
devtools::install_github("jabenninghoff/cards")
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
#>  [1] "4H 5H 5D QS JC: one_pair"      "KD JH JS QD TC: jacks_better" 
#>  [3] "7S 6C 4D QD 4H: one_pair"      "5D TC 4S 9D 8C: high_card"    
#>  [5] "3H 2S QD 8S 4H: high_card"     "QS KH 6S 2H 3C: high_card"    
#>  [7] "TS JC 7C 3C TC: one_pair"      "8S AH 7D JS 8C: one_pair"     
#>  [9] "8D 9C 9D 5C KH: one_pair"      "5S 9C KD 2C 3S: high_card"    
#> [11] "4H 2C JH KD 9H: high_card"     "KH TH KS AS KC: three_ofakind"
#> [13] "6H 9C 7C 2C JC: high_card"     "7D 9C 7H JS 7C: three_ofakind"
#> [15] "4C 3D 4H JD 2D: one_pair"      "AS 3H AD 5S 8C: jacks_better" 
#> [17] "5D 9S 8S 9H 4D: one_pair"      "AC JC TS 2H 8C: high_card"    
#> [19] "4H 9H 8D TH 6H: high_card"     "7H QH 3S KH 6D: high_card"    
#> [21] "5C KS QC 3D 7D: high_card"     "5D 9C 6D JD 7S: high_card"    
#> [23] "8C 7H 6C 7S 6D: two_pair"      "7H JH 9D 7D KH: one_pair"     
#> [25] "JC JS 9H AC TS: jacks_better"  "QC 5D 5C 7D AD: one_pair"     
#> [27] "9D 5D 3S 8H KC: high_card"     "3H JS 8D AC JC: jacks_better" 
#> [29] "AH 5D 8S 2D KH: high_card"     "JH 5H KH 6D 3H: high_card"    
#> [31] "AD 4H 9H AH 2C: jacks_better"  "4D 7S QH 6H 4S: one_pair"     
#> [33] "7D TH KH AD 5C: high_card"     "AC 3S 7S 5H 4H: high_card"    
#> [35] "6C 2S AC QS KC: high_card"     "JC 4D JH QC 9H: jacks_better" 
#> [37] "2S JS 6S AS 5S: flush"         "4H 6D 4C KH 3S: one_pair"     
#> [39] "4S 3D 7H KH 3S: one_pair"      "TD 8S 2S JS 3H: high_card"    
#> [41] "4C 4S 2C KC 8C: one_pair"      "TC 2C 4H JH 2D: one_pair"     
#> [43] "2C 6S 9D QS 6D: one_pair"      "JH KS 8C 2H TS: high_card"    
#> [45] "5D KC KD 9D 7H: jacks_better"  "TS KH 8S QC 5C: high_card"    
#> [47] "9D TH QH 5S AH: high_card"     "JC 8C 6D 4S 2H: high_card"    
#> [49] "JD 9S 2C QS 6D: high_card"     "AC 4D 8C 2H KH: high_card"
```
