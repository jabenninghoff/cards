# cards 0.1.1

* Added notebook to test performance using `bench::mark()`

# cards 0.1.0

Initial release. Includes basic functions for poker simulation:

* `new_deck()`: returns a deck of 52 cards as a `data.frame`

* `deal_hand()`: selects 5 random cards from a deck

* `print_hand()`: return a character vector of sorted cards, collapsed by default

* `eval_hand()`: evaluate the hand rank [category](https://en.wikipedia.org/wiki/List_of_poker_hands) of a five card hand
