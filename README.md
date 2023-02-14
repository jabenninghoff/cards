
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
#>  [1] "6S 6D 9H TS 5D: one_pair"      "KS 3S 5S 4S 5D: one_pair"     
#>  [3] "7S AH 4S AD QS: jacks_better"  "4D 2D 7C QD JS: high_card"    
#>  [5] "JS KH TS JD 6D: jacks_better"  "KD KS JC KH 7C: three_ofakind"
#>  [7] "9D 7H 7S 5D 8H: one_pair"      "QD 2D AC 9H TC: high_card"    
#>  [9] "AH 6D 7C 5D AD: jacks_better"  "5H JH 7S 7C 5C: two_pair"     
#> [11] "JH QS QD 7H 3S: jacks_better"  "6H 7H AS 4C 4D: one_pair"     
#> [13] "AS 3S 3H 2C 7C: one_pair"      "2D KD QH 3C AD: high_card"    
#> [15] "4H 9H 8D 7S KH: high_card"     "6H TD 9D KC QS: high_card"    
#> [17] "8S QS 3H 9H 4D: high_card"     "QH 4D 8C 9S 6H: high_card"    
#> [19] "QH 9C 9H 4S AH: one_pair"      "AH KC 4S 5C 7C: high_card"    
#> [21] "AH 2H KS 4H 9H: high_card"     "TC 2S 5H QC 9H: high_card"    
#> [23] "4S TD TC 7H 8H: one_pair"      "9C QS 5S TS 8D: high_card"    
#> [25] "AD 7C 8D QH 2S: high_card"     "7S AC 3H AS 3D: two_pair"     
#> [27] "AD 4H 4C 3C 6C: one_pair"      "KD 4S 4H 4C 7S: three_ofakind"
#> [29] "5D QS 8S 3H QH: jacks_better"  "JS QC 7S TC 9C: high_card"    
#> [31] "TC TH 7S 6H 3H: one_pair"      "KS 7C JS 3D 8D: high_card"    
#> [33] "9C AC AH JC KH: jacks_better"  "JH TC 4S KH 5C: high_card"    
#> [35] "2C 6S 5H 6C JH: one_pair"      "AS QD 9C AH 2D: jacks_better" 
#> [37] "9C TS JD 3C 6S: high_card"     "6S 6H 6D TS KH: three_ofakind"
#> [39] "5H 9C QH KS 7D: high_card"     "2S KD 9S 7C JD: high_card"    
#> [41] "AD 3C 4H TH 9C: high_card"     "AC 4H 4S TS 2H: one_pair"     
#> [43] "4S TS JC 6H 5S: high_card"     "9D 6C 3C KD 4H: high_card"    
#> [45] "4S 8D 6C 7H 9H: high_card"     "JS JH KC 7S 8C: jacks_better" 
#> [47] "7D 5D AD 9D QC: high_card"     "QD 6S QH 3D JD: jacks_better" 
#> [49] "9C 2H 6S 6D JS: one_pair"      "KS QD 4H TS JS: high_card"
```
