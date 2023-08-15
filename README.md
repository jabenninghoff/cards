
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
#>  [1] "9C QC KC 5D 9H: one_pair"      "QC 5S 3D 5C 6C: one_pair"     
#>  [3] "QD AS KS 9H 2D: high_card"     "5S 2C KC 8C 7C: high_card"    
#>  [5] "8D AH 4C TC 2H: high_card"     "2C 9D 7D 2H KC: one_pair"     
#>  [7] "5S 4C 5D AS AD: two_pair"      "7C 6S JH 4H 9S: high_card"    
#>  [9] "8S 4H 3H KH 5S: high_card"     "AS 5H 6S 6H 7C: one_pair"     
#> [11] "KS 3C 8C 9D 2S: high_card"     "3C KD 5C 6S QD: high_card"    
#> [13] "AD 3D TS 8D AH: jacks_better"  "KS JC TS TH 3C: one_pair"     
#> [15] "6S 5C QC AS 5H: one_pair"      "8D 8H 4C 6S 6D: two_pair"     
#> [17] "AD 8C JC 7S 4D: high_card"     "QC 6H 3H 8H 8D: one_pair"     
#> [19] "9H JD AS 4D TD: high_card"     "KS 2C 5D 9C AC: high_card"    
#> [21] "6C QH 2C 7H 3S: high_card"     "5C 9C 5D AC 8D: one_pair"     
#> [23] "AD 7D 7H QS 5S: one_pair"      "5H 5D 8H 4C 7H: one_pair"     
#> [25] "2D 7C KS 9S JS: high_card"     "2D TH 4D QC 3H: high_card"    
#> [27] "4S 5C 6C AS AH: jacks_better"  "AS 3S 4C 5C 7H: high_card"    
#> [29] "2D KD 6C 7H 5H: high_card"     "QD 2H 4H 3S KH: high_card"    
#> [31] "AD KH 6H 7H 3D: high_card"     "AH 9S 2H 9H AC: two_pair"     
#> [33] "5C QD 8C 5H 5D: three_ofakind" "7S 2H JD 9D 8S: high_card"    
#> [35] "7H AS 8H 6D 8S: one_pair"      "4C 9S 4D AS 8S: one_pair"     
#> [37] "8H 5S 6S 3C AH: high_card"     "TS 7S AD 3S 2S: high_card"    
#> [39] "QS 5H TD JC 3H: high_card"     "7H QS 3H 2C AH: high_card"    
#> [41] "6D 3S KC 3H QH: one_pair"      "TH 2C JH JD 7D: jacks_better" 
#> [43] "AC JD 8D TD 7H: high_card"     "JD 4H 2C KH 9D: high_card"    
#> [45] "3C 7S 7C 6C 4H: one_pair"      "QD 9C 4H 7S 8H: high_card"    
#> [47] "8D 8C JH 4D 3C: one_pair"      "5D TH AS AD JH: jacks_better" 
#> [49] "KH 4C 7S AD JC: high_card"     "2D 8D TS TD 3D: one_pair"
```
