
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
#>  [1] "6S 9C AH 9S 7H: one_pair"      "8D AS 5H KC 4H: high_card"    
#>  [3] "2D 4D JH 6C KC: high_card"     "KH 4D JD QH 3H: high_card"    
#>  [5] "9C 4C 7D QS 8C: high_card"     "AH QS JC AD 4D: jacks_better" 
#>  [7] "6S 3S AC 8H QH: high_card"     "8H 8S 4C TD 4H: two_pair"     
#>  [9] "8H TH JC AC JS: jacks_better"  "QC 8H 4C 7H KD: high_card"    
#> [11] "5D KS TH 4S AH: high_card"     "5H AC 5D TD 2D: one_pair"     
#> [13] "TC QS QD QC 6H: three_ofakind" "3D QC JH 9D 6C: high_card"    
#> [15] "QH 2H 7H 4C KH: high_card"     "2S 2H 6H 8H AS: one_pair"     
#> [17] "AS 5C 4C 7D QS: high_card"     "3H KS JH 9C 6C: high_card"    
#> [19] "9C 2D JD QC AC: high_card"     "KD QC 9D 7C 9H: one_pair"     
#> [21] "QD 2S TC 9S 7C: high_card"     "3D 3C 8C AC 2H: one_pair"     
#> [23] "8S AD 4C KS 6C: high_card"     "TS KC 9S 3D JS: high_card"    
#> [25] "AD 7S 7H 4D 3C: one_pair"      "9H KH KD 2D 5H: jacks_better" 
#> [27] "3H TC QD TD 8S: one_pair"      "6S QC JC 7S 5D: high_card"    
#> [29] "7D 7H 2C 6D JH: one_pair"      "4C TS 5D 9D 3D: high_card"    
#> [31] "3C 6S 8C KC JD: high_card"     "7H AC 9S KS QC: high_card"    
#> [33] "8S JD KC 6H QS: high_card"     "5C KH QH QC AC: jacks_better" 
#> [35] "TH JD 2C 7S 3H: high_card"     "TD 4D 9H KC AS: high_card"    
#> [37] "KS TD 2D 8H 6H: high_card"     "QS 6D 4D AC 8D: high_card"    
#> [39] "KH 2S 9H 8D 6D: high_card"     "7C TS JC TH 2S: one_pair"     
#> [41] "4H QH 7S 4D 9C: one_pair"      "6C AH 3C 7C 4C: high_card"    
#> [43] "JH 2C 7D 6C 6H: one_pair"      "3H 3S 6C 7D TS: one_pair"     
#> [45] "3H 8H JD 6H 7D: high_card"     "9C 3H 6S 4S 8D: high_card"    
#> [47] "6H 4D 6C 9S 7S: one_pair"      "TS 5D QC 7H TH: one_pair"     
#> [49] "6S 9C JC 3D 2D: high_card"     "5D 3D 4S KH 4H: one_pair"
```
