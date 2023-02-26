
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
#>  [1] "TC 4S 6D 7S JC: high_card"     "8S 3S TS KS AH: high_card"    
#>  [3] "7H 8C KD 9C 3H: high_card"     "7H 2H 3D AS TC: high_card"    
#>  [5] "4C 2H AH 8C QH: high_card"     "JD 7H 4C AD 5S: high_card"    
#>  [7] "9D 9S 7S AD KD: one_pair"      "5H 4D 8C 9D 2S: high_card"    
#>  [9] "5H QD 3H 4C 3D: one_pair"      "AH 3S 7H KC QC: high_card"    
#> [11] "6C 9S 9H TD QC: one_pair"      "8S 2H 4H 7D AC: high_card"    
#> [13] "5D 7D KH 8C TH: high_card"     "JC 9C 8C 4S 2S: high_card"    
#> [15] "2D QH 3H QD 4H: jacks_better"  "4C 6S QS 6C 7C: one_pair"     
#> [17] "2H 3C 6C 5C 3S: one_pair"      "AS 2S 5C JC 6H: high_card"    
#> [19] "AH 2C 7D KC 2H: one_pair"      "7D 2H 5S 8S 5H: one_pair"     
#> [21] "2D 5S JH AC 5D: one_pair"      "8H 9C QC 2D 2H: one_pair"     
#> [23] "3D AC TC 8D 9H: high_card"     "JD KS 9S 6C 8C: high_card"    
#> [25] "3S JS 5H JC 3H: two_pair"      "3S JS AS 8H TC: high_card"    
#> [27] "4C QC 8H 9S TS: high_card"     "QC 3C 4D AD 7S: high_card"    
#> [29] "9S 4C TC 9H 9C: three_ofakind" "KC QD 7H QS 4H: jacks_better" 
#> [31] "5D TC 4H JD 8S: high_card"     "TD 9S AH JC JS: jacks_better" 
#> [33] "2S 8C 3C 2H AD: one_pair"      "9D 8D 7S KS TD: high_card"    
#> [35] "QC 8S JS QD 8C: two_pair"      "7C 7S 5C 9C 2C: one_pair"     
#> [37] "4S 3H 3D 2C AH: one_pair"      "2C JD 3H 2S JC: two_pair"     
#> [39] "8S 7D 2S 2D 7H: two_pair"      "6S 3H 4C 8H 7D: high_card"    
#> [41] "5H 3S 4C 4D 4H: three_ofakind" "KH AH 7C TH 6D: high_card"    
#> [43] "2C QC AC 5C 9H: high_card"     "QC 6H AH 5S 9H: high_card"    
#> [45] "5D TH 2S 5S 8C: one_pair"      "6D AC 5D JH KC: high_card"    
#> [47] "KS 6D 3D AH TH: high_card"     "5H 5C JH 8H TD: one_pair"     
#> [49] "JH QC AH 8S QH: jacks_better"  "4D 2S 6C 4C 2D: two_pair"
```
