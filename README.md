
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
#>  [1] "6D QH 6H KD AD: one_pair"      "JC QH KD 5C 9D: high_card"    
#>  [3] "9S QH 6H 3S 3D: one_pair"      "4D 2H AD JD AH: jacks_better" 
#>  [5] "AH AS 2H 6D 8S: jacks_better"  "2H TC 7H 4D 9H: high_card"    
#>  [7] "JS 9D 9S 6H QD: one_pair"      "4D 4H AD 2S 7H: one_pair"     
#>  [9] "QH TS 7H JH 4H: high_card"     "5H QD 7D AD 9H: high_card"    
#> [11] "2H 7H 7D 4D AD: one_pair"      "KS KD 9S 9D JH: two_pair"     
#> [13] "2S 9S 7S TS KD: high_card"     "9S 5C JC AS 2S: high_card"    
#> [15] "9S 4C 9H 6S TC: one_pair"      "7C 7H QH QD AS: two_pair"     
#> [17] "AC QS 5S 7C KD: high_card"     "8H 8D 6C 2H AS: one_pair"     
#> [19] "3H TH 4S 2C 2S: one_pair"      "4D 5S JH 2D KH: high_card"    
#> [21] "3H QC 4C TH 5S: high_card"     "4C KS 8H AD 7D: high_card"    
#> [23] "5H AH JH 7D AD: jacks_better"  "QD QH TS 7C 8C: jacks_better" 
#> [25] "QC 4S JD 4D 9D: one_pair"      "TC 2H 5C 9H AD: high_card"    
#> [27] "8H 6D KD 6S TH: one_pair"      "TH 8H 5H 3H JD: high_card"    
#> [29] "9D KS QC 5S 5D: one_pair"      "JS 8D KH KS JH: two_pair"     
#> [31] "2H 4S QC JH TS: high_card"     "KD 5S 7H 4H 8D: high_card"    
#> [33] "JH TH AC KS 8H: high_card"     "7H 9S 7C AD 8S: one_pair"     
#> [35] "AS QD 9D 9S KS: one_pair"      "8H 4H KS 5C 3D: high_card"    
#> [37] "KD QS 4H 2C TS: high_card"     "7D QH QC 4D 5C: jacks_better" 
#> [39] "8S 9H AS AC JD: jacks_better"  "3S 2S 6S 2H 2C: three_ofakind"
#> [41] "8C KH 9S 3C 4H: high_card"     "8C 7C 4D 9C 2D: high_card"    
#> [43] "7C 2D 2C 9D 3D: one_pair"      "TC 5H KD 9D TS: one_pair"     
#> [45] "5C AC 9D 6C 7D: high_card"     "2H QS JD 5D 6C: high_card"    
#> [47] "8H QH 2C 4C 5S: high_card"     "2D QH KD 2H 8D: one_pair"     
#> [49] "7D 6D JD 8S 2C: high_card"     "5H 3C AS 8H 5D: one_pair"
```
