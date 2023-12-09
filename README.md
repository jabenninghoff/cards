
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
#>  [1] "QS QC TD 6H KH: jacks_better"  "7H 6D 8S KD 8C: one_pair"     
#>  [3] "QC 6S AD TC TH: one_pair"      "6C QD 2C KC KS: jacks_better" 
#>  [5] "9H JH JC 9C AC: two_pair"      "9S JC JH 3D 3S: two_pair"     
#>  [7] "6C 9D 8H 2C AD: high_card"     "3H 5S 2C 2D KH: one_pair"     
#>  [9] "2H 6D QH 9C 7H: high_card"     "JH QD 5S 7C 6D: high_card"    
#> [11] "2S 4D AC 7S 3C: high_card"     "JD 3H QC 9H JC: jacks_better" 
#> [13] "2C 5H QS QD JD: jacks_better"  "KC KD 9S 8C 2H: jacks_better" 
#> [15] "4D TS 5S JH 4S: one_pair"      "7S TS JD AS 5H: high_card"    
#> [17] "9S 7H TS 3S KC: high_card"     "AD 7C 7D JD 3D: one_pair"     
#> [19] "8H QH AC 5H 3C: high_card"     "TD 7H 6D 4H 5H: high_card"    
#> [21] "KD 3C 9S AS 4D: high_card"     "8S AH 8D 5C JH: one_pair"     
#> [23] "2D QC KC 4C 3H: high_card"     "KC 6C 9C TD JC: high_card"    
#> [25] "7D 3C 7C 4D 2H: one_pair"      "QH QC 4S 6D KC: jacks_better" 
#> [27] "6C 8D 9C 4C 5S: high_card"     "QH AC JD 6S 6H: one_pair"     
#> [29] "7D KC 5D 6H 6C: one_pair"      "JS 8H TH 5D 4D: high_card"    
#> [31] "6D 3S 9D 3D KD: one_pair"      "4D JC 8C 5D 5H: one_pair"     
#> [33] "5D 9D 4D TC KD: high_card"     "4D KH QH AS 3C: high_card"    
#> [35] "5D 4H 9H 4D 4C: three_ofakind" "JS 7S 2C 7C 5H: one_pair"     
#> [37] "5H AC 8S TH 8H: one_pair"      "5C 2D 8D KS 2S: one_pair"     
#> [39] "KH 6D 7C AS 2D: high_card"     "QS QH AC 6D 6H: two_pair"     
#> [41] "3D 3C 8H QC JH: one_pair"      "8H 4H KS 9D 3H: high_card"    
#> [43] "2D 7C AS 3S 3H: one_pair"      "6S 5C 6C JH 2S: one_pair"     
#> [45] "JS TC KH 6S 8C: high_card"     "4H KC QS 5H 3S: high_card"    
#> [47] "6D 5H 7D JD 6S: one_pair"      "7D TD 6S TH JD: one_pair"     
#> [49] "5H 2D 3D TH 4H: high_card"     "7C 4D 3S JH QH: high_card"
```
