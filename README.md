
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
#>  [1] "6C AS QS 3S 7C: high_card"     "5H 2H 4C 2D QS: one_pair"     
#>  [3] "6H KC 3C AS 2D: high_card"     "2C JS 4S KH 2S: one_pair"     
#>  [5] "5C 8H 9C TH 3C: high_card"     "JC 3D 8H AC 9C: high_card"    
#>  [7] "2C AH 4D AD 6S: jacks_better"  "3C AH AC KS TD: jacks_better" 
#>  [9] "5C 9S 2S TS AC: high_card"     "TC 3S TD 7C QD: one_pair"     
#> [11] "QS 6C 6H 3D 7D: one_pair"      "KH 4C 3S 4H 4S: three_ofakind"
#> [13] "TC AS JS 8D 7C: high_card"     "AS 4S JD 6D TS: high_card"    
#> [15] "8D AC 2S 7S KC: high_card"     "JS 3C KC AC KS: jacks_better" 
#> [17] "QS 6C KD JC 9C: high_card"     "6D 8H KC 7H 2S: high_card"    
#> [19] "TD 3H AC 4S AS: jacks_better"  "JC 6D QD AS 6H: one_pair"     
#> [21] "6D 7S 7D QH 4D: one_pair"      "JH 4S 2H KD 7C: high_card"    
#> [23] "9D 6D 4D 3S TC: high_card"     "KS TC 6H JH 6D: one_pair"     
#> [25] "6D 6S 3C 9C QC: one_pair"      "QC KH JC 6D 7H: high_card"    
#> [27] "TC 3C JS 2C 9C: high_card"     "2D 8C 9H 3D 5S: high_card"    
#> [29] "6D 3C 8H 6C TH: one_pair"      "9C 8D 6H 6S 5C: one_pair"     
#> [31] "KC 4H QS 3S 7H: high_card"     "QD 4H 4D JD TC: one_pair"     
#> [33] "9C 4D TC AH 3D: high_card"     "5S JD 8C 7S 8D: one_pair"     
#> [35] "KS 6C JS AH 5S: high_card"     "8H 6H QS JD KD: high_card"    
#> [37] "9D 3H AH 2D TS: high_card"     "6C 5C 2S 7H 8C: high_card"    
#> [39] "KD QD KH 2S 5C: jacks_better"  "TD QS 3S 2D QH: jacks_better" 
#> [41] "TC 7S 5H TS 2D: one_pair"      "AH TS QH QD 4H: jacks_better" 
#> [43] "6D AD 6H 4D 3S: one_pair"      "QS 2C 8C KS 4H: high_card"    
#> [45] "9S 6C 8D KS TS: high_card"     "9H 7H QS 9S 5H: one_pair"     
#> [47] "QH 8S 8D 4H 9S: one_pair"      "6C KD KS KC 4C: three_ofakind"
#> [49] "6H KD 7S 9S 5S: high_card"     "AC 6C AS 3D 7S: jacks_better"
```
