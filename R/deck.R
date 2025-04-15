#' Create a deck of cards
#'
#' Return a deck of 52 playing cards represented as integers from 0 to 51.
#'
# nolint next: line_length_linter.
#' Following the example of [PH Evaluator](https://github.com/HenryRLee/PokerHandEvaluator/blob/master/python/phevaluator/card.py),
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

#' Print a hand of cards
#'
#' Returns a character vector of cards, collapsed by default.
#'
#' @param hand a hand of cards.
#' @param collapse if `TRUE`, collapse the character vector.
#'
#' @examples
#' (hand <- deal_hand(new_deck()))
#' print_hand(hand)
#' @export
print_hand <- function(hand, collapse = TRUE) {
  cards <- paste0(rep(c(2:9, "T", "J", "Q", "K", "A"), each = 4), c("C", "D", "H", "S"))
  h <- cards[hand + 1]
  if (collapse) {
    return(paste(h, collapse = " "))
  } else {
    return(h)
  }
}

#' Evaluate a poker hand
#'
#' Evaluate the rank category of a five card poker hand.
#'
#' @param hand a hand of cards.
#'
#' @return string hand rank
#'
#' @examples
#' hand <- deal_hand(new_deck())
#' print_hand(hand)
#' eval_hand(hand)
#' @export
eval_hand <- function(hand) { # nolint: cyclocomp_linter.
  c_rank <- hand %/% 4
  c_rank_tab <- tabulate(c_rank + 1, 13)

  m <- max(c_rank_tab)
  if (m == 4) {
    return("four_ofakind")
  }
  if (m == 3) {
    if (sum(c_rank_tab == 2) == 1) {
      return("full_house")
    } else {
      return("three_ofakind")
    }
  }
  if (m == 2) {
    if (sum(c_rank_tab == 2) == 2) {
      return("two_pair")
    } else if (any(c_rank_tab[10:13] == 2)) {
      return("jacks_better")
    } else {
      return("one_pair")
    }
  }

  is_flush <- all(hand[1] %% 4 == hand %% 4)
  is_straight <- (max(c_rank_tab) == 1 && (max(c_rank) - min(c_rank) == 4)) ||
    # ace low
    all(c_rank_tab == c(1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L))

  if (is_flush && is_straight) {
    if (min(c_rank) == 8) {
      return("royal_flush")
    } else {
      return("straight_flush")
    }
  }
  if (is_flush) {
    return("flush")
  }
  if (is_straight) {
    return("straight")
  }

  return("high_card") # nolint: return_linter. explicit return used for clarity.
}
