
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
#>  [1] "6S JH TC JD 3C: jacks_better" "2D KH JS JD 8C: jacks_better"
#>  [3] "6D 5S 3H 2C 9S: high_card"    "KH KD 9C 6D 3H: jacks_better"
#>  [5] "7S 5H 6S 6H 8S: one_pair"     "QH 4S 8S QD TH: jacks_better"
#>  [7] "2S 6S 7H JS 5C: high_card"    "AD KH 8C 8H 4C: one_pair"    
#>  [9] "JD QD AD AH 4H: jacks_better" "KS TH 4H KH JH: jacks_better"
#> [11] "9S 9D QS 6S 7D: one_pair"     "9S QC 7C 9D 8H: one_pair"    
#> [13] "6C 2H JH 2S 7H: one_pair"     "6H 2D AC JC QH: high_card"   
#> [15] "3D 4C 6C 5C 3S: one_pair"     "AC TS KS 8S 4D: high_card"   
#> [17] "6S 5H 9H KS 3H: high_card"    "TC AC 8H 5S 5D: one_pair"    
#> [19] "JD AH 5C 5S 6H: one_pair"     "9C TS 8C 6H 5D: high_card"   
#> [21] "KC 9S KD 2D AS: jacks_better" "7C 7H 6D 2H QS: one_pair"    
#> [23] "8H JC 3C 9H 3S: one_pair"     "2S JD 9C 9D 8H: one_pair"    
#> [25] "3C TC TH 8C KC: one_pair"     "7S 9D 3C 4H 5D: high_card"   
#> [27] "3H 8H KC AC 6C: high_card"    "TC 2D 4D JS TH: one_pair"    
#> [29] "2C 9D 3S 9C 5H: one_pair"     "3D TH JC TC 3H: two_pair"    
#> [31] "8S KS 8C 6H TD: one_pair"     "7S 4D TD JC 3D: high_card"   
#> [33] "TH 4S 3C QD QC: jacks_better" "QH 6H QD AD 5S: jacks_better"
#> [35] "5D KD 4D TC 7C: high_card"    "2S AH 2C 7H KH: one_pair"    
#> [37] "JS JC 8H 4C AD: jacks_better" "8H 3C 4D 5C JC: high_card"   
#> [39] "7C 8C 7S TC TH: two_pair"     "6D JS 7D TH AC: high_card"   
#> [41] "9D 9C TD 8D 2H: one_pair"     "2C 7H 2D 3D AH: one_pair"    
#> [43] "4H QD 8S 5S 5C: one_pair"     "6C JH KH 2C KS: jacks_better"
#> [45] "9D 8H QS 7C 2S: high_card"    "3S 4D TD 9H 2S: high_card"   
#> [47] "KS 4D 7D 9H AS: high_card"    "TC QD JC 6D 5S: high_card"   
#> [49] "KS KD JH 9S 4C: jacks_better" "TS KS QC KD AC: jacks_better"
```
