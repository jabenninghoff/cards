
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
#>  [1] "TH 9D 3S 5D QC: high_card"     "3D 8C 6D 3S 4D: one_pair"     
#>  [3] "KH QS 3S TS TC: one_pair"      "6C KC 3D 2C TC: high_card"    
#>  [5] "9S AH 9H 8C AC: two_pair"      "2C 7D 9C JD AD: high_card"    
#>  [7] "TH 3D 8C AH KH: high_card"     "8C 4C 4D 9D 6H: one_pair"     
#>  [9] "5H 9C JH AD KS: high_card"     "9C KS 9H 5S QS: one_pair"     
#> [11] "TD KD 2C AS 4H: high_card"     "TH 6C KC KD QC: jacks_better" 
#> [13] "7C QS 4H 2H KS: high_card"     "2C 2H 6H TS 9D: one_pair"     
#> [15] "AD 4C 8D JD 3D: high_card"     "AH 8H 3C JD JC: jacks_better" 
#> [17] "KH TS TC 4S 4C: two_pair"      "6S 6D 7S QD TC: one_pair"     
#> [19] "6S JS KD QD QH: jacks_better"  "7H 8D TC 5S 2H: high_card"    
#> [21] "JD QC 2H JH 8S: jacks_better"  "4S AH 6C QH TD: high_card"    
#> [23] "QC TD QH JH 8C: jacks_better"  "9S QH 2H KC AH: high_card"    
#> [25] "5C TS 8C TH JS: one_pair"      "4C 7S 2C 9D 7D: one_pair"     
#> [27] "QC 5D KS 7D 4S: high_card"     "7H 2C 4H 7S 5S: one_pair"     
#> [29] "6S 8C AS 3H TC: high_card"     "JC QC 4C 9S 3D: high_card"    
#> [31] "3H JC JS KS JH: three_ofakind" "4D 7C QD AD 4S: one_pair"     
#> [33] "4D KC 3C 5D 7H: high_card"     "TD JD 4D 9S 6S: high_card"    
#> [35] "KC 8C 9H 8D 2S: one_pair"      "4D JD 3H 4C 9H: one_pair"     
#> [37] "JH 7S 9S AC 8C: high_card"     "8D 5H AS 9H 2C: high_card"    
#> [39] "2C KH 9D 4S 9C: one_pair"      "7C QS JH KH 8C: high_card"    
#> [41] "AC TH JC JD KS: jacks_better"  "3S QC JH JD 2S: jacks_better" 
#> [43] "JH 4H 6S 7C 5D: high_card"     "8H 5S JH 9D 3C: high_card"    
#> [45] "5H JD 8S 5C 6H: one_pair"      "KH QS 4H QC 2D: jacks_better" 
#> [47] "3D 6D 9D AS TD: high_card"     "KH 5S 9H 8H 7S: high_card"    
#> [49] "3S 5H 9H 7S JC: high_card"     "AC 5D TD JH JS: jacks_better"
```
