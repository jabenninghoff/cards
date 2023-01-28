#' Create a deck of cards
#'
#' Return a deck of 52 playing cards represented as integers from 0 to 51.
#'
# nolint start: line_length_linter.
#' Following the example of [PH Evaluator](https://github.com/HenryRLee/PokerHandEvaluator/blob/master/python/phevaluator/card.py),
# nolint end
#'   integers are used to represent a card `id`, with the two least significant bits representing
#'   the 4 suits (0-3), and the rest representing the 13 ranks (0-12):
#'
#' |      |    C |    D |    H |    S |
#' | ---: | ---: | ---: | ---: | ---: |
#' |    2 |    0 |    1 |    2 |    3 |
#' |    3 |    4 |    5 |    6 |    7 |
#' |    4 |    8 |    9 |   10 |   11 |
#' |    5 |   12 |   13 |   14 |   15 |
#' |    6 |   16 |   17 |   18 |   19 |
#' |    7 |   20 |   21 |   22 |   23 |
#' |    8 |   24 |   25 |   26 |   27 |
#' |    9 |   28 |   29 |   30 |   31 |
#' |    T |   32 |   33 |   34 |   35 |
#' |    J |   36 |   37 |   38 |   39 |
#' |    Q |   40 |   41 |   42 |   43 |
#' |    K |   44 |   45 |   46 |   47 |
#' |    A |   48 |   49 |   50 |   51 |
#'
#' For each card, the rank is `id %/% 4`, and the suit is `id %% 4`.
#'
#' @examples
#' new_deck()
#' new_deck() %/% 4
#' new_deck() %% 4
#' @export
new_deck <- function() {
  0:51
}

#' Deal a hand of cards
#'
#' Return a five card hand from a deck of cards, as an `integer`
#'
#' Uses [sample()] to select random cards.
#'
#' @param deck a deck created by [new_deck()].
#' @param size hand size, default = 5.
#'
#' @examples
#' deal_hand(new_deck())
#' @export
deal_hand <- function(deck, size = 5) {
  sample(deck, size)
}
