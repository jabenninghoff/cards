
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cards <img src="man/figures/logo.png" align="right" alt="logo" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/jabenninghoff/cards/workflows/R-CMD-check/badge.svg)](https://github.com/jabenninghoff/cards/actions)
[![lint](https://github.com/jabenninghoff/cards/workflows/lint/badge.svg)](https://github.com/jabenninghoff/cards/actions)
[![Codecov test
coverage](https://codecov.io/gh/jabenninghoff/cards/graph/badge.svg)](https://app.codecov.io/gh/jabenninghoff/cards)
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
#>  [1] "4S AD AC 9D TC: jacks_better"  "TS 4C KH 9H 7H: high_card"    
#>  [3] "JS 6D KC 8D 2C: high_card"     "4S QH 6C 9D TC: high_card"    
#>  [5] "TC 9S 6D 5S QS: high_card"     "4H TD AH 7S 2H: high_card"    
#>  [7] "8C 4H AD 9H TH: high_card"     "9D 8C 9C 7S 5C: one_pair"     
#>  [9] "JS 9C KS 6S 4H: high_card"     "JD 6H 2C 6D TC: one_pair"     
#> [11] "AH 5C 3S KH 9C: high_card"     "3C 8H QH 2S 2D: one_pair"     
#> [13] "6S 3D 2D 4D 3C: one_pair"      "7C 4H 3S 9S QD: high_card"    
#> [15] "TH 2S TC 6H 3D: one_pair"      "6S 7C 2C 2H 8C: one_pair"     
#> [17] "4S KS 7C JS 2S: high_card"     "3C 4C TC 8S QD: high_card"    
#> [19] "4H 2S QS QD AD: jacks_better"  "2D AH TD 3C 7D: high_card"    
#> [21] "6D 6S KH TH 2D: one_pair"      "9C 7S 2C QD 7C: one_pair"     
#> [23] "9H JD 3H 2S 3D: one_pair"      "JD TD 3D 5D 4C: high_card"    
#> [25] "JS 9S 7D KH TD: high_card"     "3S JC KD 5D TC: high_card"    
#> [27] "QS 6S 6C 3D 6H: three_ofakind" "AD 9H 4D AS KH: jacks_better" 
#> [29] "9S 4D 8D 8H 5C: one_pair"      "9H TD QD 5C 7D: high_card"    
#> [31] "QH KD 2C 5S 5H: one_pair"      "2D AS TH QD 5S: high_card"    
#> [33] "JD 7S 8H 4S QH: high_card"     "2S 7H QC QS 6S: jacks_better" 
#> [35] "JC 9S 2S 4S 5H: high_card"     "KC JH 2D 6S 4H: high_card"    
#> [37] "8S JC 3D 3H JH: two_pair"      "6S 2H TC TH QH: one_pair"     
#> [39] "QH 9C JD JS 6H: jacks_better"  "QC 3C 8D JC 3D: one_pair"     
#> [41] "QC JD AH 6H 7D: high_card"     "3S 9D 3D AD 5D: one_pair"     
#> [43] "8D 9D 2S 3C AH: high_card"     "9H 9C TC JS 9D: three_ofakind"
#> [45] "JH 9H 5H JC 7H: jacks_better"  "AS 6H 4C 6C TS: one_pair"     
#> [47] "KH 3D 3C QH QD: two_pair"      "KC 7C 5S KD JC: jacks_better" 
#> [49] "5D 3S QH 6H QC: jacks_better"  "9S 8H 9H JC JS: two_pair"
```
