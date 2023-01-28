
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
#>  [1] "JS AC KS 7D 2H: high_card"     "JS 4S AH 5S QC: high_card"    
#>  [3] "AD JH 8S 7S 7H: one_pair"      "6D 6C 3C 9H 5D: one_pair"     
#>  [5] "5D QD KS QS 4H: jacks_better"  "3S 5D KC QD 3D: one_pair"     
#>  [7] "KC TC 5C 2D 5H: one_pair"      "6H 3D 2D 8C JH: high_card"    
#>  [9] "6C 5S AC JC QS: high_card"     "4S AC KD 8D QS: high_card"    
#> [11] "3C 6S 2S JH 5D: high_card"     "6S 9C TS 3S AD: high_card"    
#> [13] "TH 2C JC QS 8D: high_card"     "7S 8D 8H JD TH: one_pair"     
#> [15] "7H 5C 6D AS 3S: high_card"     "KC AC 7H 7D QC: one_pair"     
#> [17] "JH QH 9C QS TD: jacks_better"  "QH 8S 4S QS JC: jacks_better" 
#> [19] "6C 4S TS 2C 4C: one_pair"      "TD JD AD TC TH: three_ofakind"
#> [21] "AS AH TC 3H 3D: two_pair"      "AH 8S QC KS JD: high_card"    
#> [23] "KS JC 2D 9S KD: jacks_better"  "6H 3H 3D AD QH: one_pair"     
#> [25] "KS 6S 5S AD 7C: high_card"     "QC TD 7S 5H 2H: high_card"    
#> [27] "2S 3C TD 4S 3D: one_pair"      "8S KC 2C AD JH: high_card"    
#> [29] "3C 5C KC 4S JH: high_card"     "TD 2S 8S 4S 8H: one_pair"     
#> [31] "2D 2C 3C JC 2H: three_ofakind" "2C 6H AH 7C JH: high_card"    
#> [33] "4D 5C TH 3S AC: high_card"     "3C 4C JC 6H AH: high_card"    
#> [35] "7C QC JS 3S 4S: high_card"     "7D 4D 5S QC KS: high_card"    
#> [37] "9H TC 3D AD 8C: high_card"     "TC 3H 7D 9H QH: high_card"    
#> [39] "TD AC 7H 3C 5S: high_card"     "9D QD 5S TS 6S: high_card"    
#> [41] "2D 6S 7C JC QD: high_card"     "2D KC 3H 8S 2S: one_pair"     
#> [43] "4H 9C 6S KH AS: high_card"     "AC 2D JS TC 3D: high_card"    
#> [45] "AH JC 4D 8S KD: high_card"     "4C 8C AH QC AD: jacks_better" 
#> [47] "KD 8D 4H TS 8H: one_pair"      "6S 9C JH QD 8D: high_card"    
#> [49] "5C AC KD 7C 3H: high_card"     "6D 2C AH 8S AS: jacks_better"
```
