# cards 0.3.13

* Corrected GitHub language stats

# cards 0.3.12

* Maintenance update

# cards 0.3.11

* Maintenance update

# cards 0.3.10

* Updated for R 4.5.0

# cards 0.3.9

* Added `tools/distclean.sh`: script to clean Python and Rcpp environments

# cards 0.3.8

* Enabled pkgdown [light switch](https://pkgdown.r-lib.org/articles/customise.html#light-switch)

# cards 0.3.7

* Updated for R 4.4.0

# cards 0.3.6

* Maintenance update

# cards 0.3.5

* Maintenance update

# cards 0.3.4

* Maintenance update

# cards 0.3.3

* Add new cards hex sticker logo from [stickers](https://jabenninghoff.github.io/stickers/) to `man/figures/logo.png` per [roxygen2](https://github.com/r-lib/roxygen2/blob/db4dd9a4de2ce6817c17441d481cf5d03ef220e2/R/object-defaults.R#L43) and to `README.Rmd` per [pkgdown](https://github.com/r-lib/pkgdown/blob/548a9493b72ff93d3ed8392d4ad30b77d8b15fa5/README.Rmd#L15)

# cards 0.3.2

* Update TODO

# cards 0.3.1

* Added `copy-phevaluator` script to copy (or update) PH Evaluator source and header files

# cards 0.3.0

* Added `eval_hand_phe()`: Evaluate the rank category of a five card poker hand using [PH Evaluator](https://github.com/HenryRLee/PokerHandEvaluator)'s five card C/C++ implementation using [Rcpp](https://www.rcpp.org).

* Added benchmarks of PH Evaluator C/C++ implementation using `eval_hand_phe()`

# cards 0.2.7

* Maintenance update

# cards 0.2.6

* Site rendering fixes

# cards 0.2.5

* Updated installation instructions

# cards 0.2.4

* Maintenance update

# cards 0.2.3

* Maintenance update

# cards 0.2.2

* Added benchmarks of `phevaluator` using `reticulate::import()` to Benchmarks vignette

# cards 0.2.1

* Added "Video Poker" vignette

# cards 0.2.0

* Moved benchmark tests to new "Benchmarks" vignette

* Renamed functions from first implementation to `new_deck_df()`, `deal_hand_df()`, `print_hand_df()`, `eval_hand_df()`

* Use "T" for ten instead of "10"

* Add second implementation using `integer()`: `new_deck()`, `deal_hand()`, `print_hand()`, `eval_hand()`

* Updated Benchmarks vignette and added comparisons between implementations

# cards 0.1.3

* Maintenance update

# cards 0.1.2

* Maintenance update

# cards 0.1.1

* Added notebook to test performance using `bench::mark()`

# cards 0.1.0

Initial release. Includes basic functions for poker simulation:

* `new_deck()`: returns a deck of 52 cards as a `data.frame`

* `deal_hand()`: selects 5 random cards from a deck

* `print_hand()`: return a character vector of sorted cards, collapsed by default

* `eval_hand()`: evaluate the hand rank [category](https://en.wikipedia.org/wiki/List_of_poker_hands) of a five card hand
