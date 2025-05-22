
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
#>  [1] "5D 3D JH 6C 5H: one_pair"      "QH JC AC 9H 7D: high_card"    
#>  [3] "TH JD 5D JH JS: three_ofakind" "4H 5C TH AH JH: high_card"    
#>  [5] "3D TS TC 7S KC: one_pair"      "6D TD AS JC 9S: high_card"    
#>  [7] "AH AD TC JD TS: two_pair"      "QC KD 4D 9D KH: jacks_better" 
#>  [9] "6D 5D KS 5H 7D: one_pair"      "4S AC 7H QD KH: high_card"    
#> [11] "5D 3S 4C 4S 9C: one_pair"      "JC 4S TC 7C AS: high_card"    
#> [13] "6H AS AC 9D 4D: jacks_better"  "TD 3H 2H 7S KC: high_card"    
#> [15] "QS KC 6D 4H 6H: one_pair"      "KS 3H AH QC 5H: high_card"    
#> [17] "5H QH 4C 2D KH: high_card"     "JD 7S 2H TD 3H: high_card"    
#> [19] "5D 6D 7S QH 8H: high_card"     "AC TH AH 5C 8D: jacks_better" 
#> [21] "QD 2H 6S KH 7D: high_card"     "AS 7C 8S 8H 3S: one_pair"     
#> [23] "6C 9H JS 8H 3C: high_card"     "6C 3D JD 9D 8D: high_card"    
#> [25] "9C AS QS 3H 6S: high_card"     "3D TH KH KD 7C: jacks_better" 
#> [27] "2C AH TS 3C 7D: high_card"     "6D 4H 9C 4S 7C: one_pair"     
#> [29] "7C 3H KS 9S AD: high_card"     "QH 7C 7H AC 6H: one_pair"     
#> [31] "TS QS 8D QD 4S: jacks_better"  "JD 8C TC 9D 5H: high_card"    
#> [33] "4D JH 5D 6S 2D: high_card"     "JC 8S 8C TH AH: one_pair"     
#> [35] "8D TD KD 9D QC: high_card"     "6D 8C 9C 3H 6S: one_pair"     
#> [37] "4S JS QC QD 2S: jacks_better"  "QC 7C 8H TD 7S: one_pair"     
#> [39] "2S 9D 3S 7S QS: high_card"     "4H 9S 2D KS 7S: high_card"    
#> [41] "QS 7H KC JS 9C: high_card"     "2D 8S 9S KS 7S: high_card"    
#> [43] "4C AH JS 4D KH: one_pair"      "AS QC 2H 7S QS: jacks_better" 
#> [45] "JC JD TH AS 3C: jacks_better"  "2S AD KS QC JC: high_card"    
#> [47] "3C QC QD 9S 8D: jacks_better"  "QC 7D 3D 2D JD: high_card"    
#> [49] "8D AD QS 5H 2C: high_card"     "KH 5S QD 4C 3D: high_card"
```
