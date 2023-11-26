
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
#>  [1] "5S 5C TS 7D 6S: one_pair"      "3C 5S KC TH AH: high_card"    
#>  [3] "7S QD JD 7D JH: two_pair"      "AH 3H 8S 9D 2H: high_card"    
#>  [5] "8H 4C TS 2D JS: high_card"     "7S QD 4S 6D 3D: high_card"    
#>  [7] "KH 3H AS 5C 7D: high_card"     "3H 5C 5D JH KD: one_pair"     
#>  [9] "9S 4C 4D AC QH: one_pair"      "7H 6D 7S 2S TS: one_pair"     
#> [11] "8H QH 2S 5C 7D: high_card"     "4C QD 5S 3C 5H: one_pair"     
#> [13] "3H 3S 7C 2D QD: one_pair"      "KH JC 7H TS 6H: high_card"    
#> [15] "9C QD TD 9H 4C: one_pair"      "6S JD 6H TC KC: one_pair"     
#> [17] "AH KD 4S 7D 9D: high_card"     "7D 4H 4S JC 9C: one_pair"     
#> [19] "TD AS AH JD TS: two_pair"      "7C TC 8C 4S KD: high_card"    
#> [21] "6H 8H 5C AH TH: high_card"     "8D TC KS 2C 7D: high_card"    
#> [23] "KD 6S 8S TH 2C: high_card"     "8S JD 2H QC 4D: high_card"    
#> [25] "TD KD AS 6D 4C: high_card"     "8D 5D QS JH KD: high_card"    
#> [27] "4D QS KH 3D 5S: high_card"     "QS 3C TC KD 3D: one_pair"     
#> [29] "AC 5D 5H QD JS: one_pair"      "JH 7S QC 9S QS: jacks_better" 
#> [31] "TS QD KC TD 5H: one_pair"      "7S KH QS 9S JD: high_card"    
#> [33] "JS JD 9D 3H TC: jacks_better"  "TC TH 2C 4H 4C: two_pair"     
#> [35] "8S KD QC 5S 5C: one_pair"      "7H TH TC 8C QH: one_pair"     
#> [37] "QS AC QD 9D KS: jacks_better"  "TC AD KC 6C 4D: high_card"    
#> [39] "5S AH 5D 2C QD: one_pair"      "8C KS QS 5C 3D: high_card"    
#> [41] "KD TH JD 3C 7D: high_card"     "QD 2S 7S 5C 8C: high_card"    
#> [43] "3C KS 3S 7H AS: one_pair"      "5H 4H 7C 5D 2C: one_pair"     
#> [45] "AD 2C 3D 8D JH: high_card"     "KC JC 7D 8D KH: jacks_better" 
#> [47] "4S 6D 8D 8C 8H: three_ofakind" "JD 4S 8H AD 9C: high_card"    
#> [49] "3S AS 6D QS KS: high_card"     "3S 6H 9C KC 9H: one_pair"
```
