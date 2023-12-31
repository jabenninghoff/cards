
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
#>  [1] "TC 5D 9D 7H 6C: high_card"     "QS AS 2C TC TD: one_pair"     
#>  [3] "3D KS 5D 2H 8D: high_card"     "TS 6C QC KD KC: jacks_better" 
#>  [5] "9D 9C KC 9H QD: three_ofakind" "3C QD KS KD 6D: jacks_better" 
#>  [7] "7D QH 6C 5H QC: jacks_better"  "8D QS JD 9S 7D: high_card"    
#>  [9] "9C 9S 9D QC TD: three_ofakind" "9S JS 4S 2H 3S: high_card"    
#> [11] "5D AD TC KH JD: high_card"     "9H 4D 2S JC TD: high_card"    
#> [13] "9C QC KC 3H QD: jacks_better"  "KS AH 2H 7S QS: high_card"    
#> [15] "4C 6C 3H 2D 8S: high_card"     "AD 5S 4D 6H 3S: high_card"    
#> [17] "6C 2D TD JS 9H: high_card"     "QH 8S 8D JH 5C: one_pair"     
#> [19] "2D 3D 7H 6D QC: high_card"     "6H 9D AS 3C 3S: one_pair"     
#> [21] "AC 4C 4D 5D KH: one_pair"      "QC KH 5H 2H JH: high_card"    
#> [23] "KH TH 7S 4C 4H: one_pair"      "KC 4C 7S AS 5C: high_card"    
#> [25] "9H 3C 8D 8H 2D: one_pair"      "8S 8D 2S QC TS: one_pair"     
#> [27] "7H AD 3D 4S KD: high_card"     "QH 2S AH 4S JH: high_card"    
#> [29] "3C QS 3S 6S 6H: two_pair"      "4S 4C AD JC 9C: one_pair"     
#> [31] "8S 5C 8D 5D QH: two_pair"      "TC 7S KC 8S 5H: high_card"    
#> [33] "8C 4C TC KS JC: high_card"     "8H 4H 4S 2D QC: one_pair"     
#> [35] "8D AD 2S JS 4D: high_card"     "QS 4C TH 6H AC: high_card"    
#> [37] "JD KC 3C 8H 3S: one_pair"      "TS TD AD KS AS: two_pair"     
#> [39] "8C 2D QD TS 4H: high_card"     "5D KH 8S 7D 6H: high_card"    
#> [41] "2D TD 8D TC 4H: one_pair"      "8D 3C JS QD KS: high_card"    
#> [43] "JD 9C 6S TD 3S: high_card"     "7S 4D 2C 3D KD: high_card"    
#> [45] "4S 2D AS 6C TD: high_card"     "9H 8S KH QD 5S: high_card"    
#> [47] "QC 9C 4C 9S 4S: two_pair"      "8C AD AH QD 6D: jacks_better" 
#> [49] "4H AC 3C 6D KD: high_card"     "4C JC 7C 2C QS: high_card"
```
