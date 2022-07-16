#' Create a deck of cards
#'
#' Return a standard deck of 52 playing cards, as a `data.frame` with `rank` and `suit`.
#'
#' Uses [expand.grid()] which creates a `data.frame` of factors combining ranks and suits.
#'
#' @return a `data.frame` containing a deck of 52 cards
#' @export
#'
#' @examples
#' new_deck()
new_deck <- function() {
  expand.grid(
    rank = c(2:10, "J", "Q", "K", "A"), suit = c("C", "D", "H", "S"),
    KEEP.OUT.ATTRS = FALSE, stringsAsFactors = TRUE
  )
}

#' Deal a hand of cards
#'
#' Return a five card hand from a deck of cards, as a `data.frame` with `rank` and `suit`.
#'
#' Uses [sample()] to select 5 random cards.
#'
#' @param d a deck created by [new_deck()].
#'
#' @return a `data.frame` containing 5 random cards.
#' @export
#'
#' @examples
#' deck <- new_deck()
#' deal_hand(deck)
deal_hand <- function(d) {
  d[sample(nrow(d), 5), ]
}

#' Evaluate a poker hand
#'
#' Evaluate the rank of a five card poker hand.
#'
#' Uses [order()] and [rle()] to identify flushes, straights, pairs, three, and four of a kind.
#'
#' @param h a `data.frame` of 5 cards.
#'
#' @return string hand rank
#' @export
#'
#' @examples
#' deck <- new_deck()
#' (hand <- deal_hand(deck))
#' eval_hand(hand)
eval_hand <- function(h) { # nolint: cyclocomp_linter.
  first <- function(x) utils::head(x, 1)
  last <- function(x) utils::tail(x, 1)

  # sort hand with lowest rank first
  h <- h[order(h$rank), ]
  r <- rle(as.integer(h$rank))

  is_flush <- first(rle(as.integer(h$suit))$lengths) == 5L
  is_straight <- (last(r$values) - first(r$values) == 4L) ||
    (length(r$values) == 5 && last(r$values == 13L) && r$values[[4]] == 4L) # ace low

  if (is_flush && is_straight && first(r$values) == 9L) {
    return("royal_flush")
  } else if (is_flush && is_straight) {
    return("straight_flush")
  } else if (4L %in% r$lengths) {
    return("four_ofakind")
  } else if (3L %in% r$lengths && 2L %in% r$lengths) {
    return("full_house")
  } else if (is_flush) {
    return("flush")
  } else if (is_straight) {
    return("straight")
  } else if (3L %in% r$lengths) {
    return("three_ofakind")
  } else if (length(r$lengths[r$lengths == 2]) == 2) {
    return("two_pair")
  } else if (length(r$lengths[r$lengths == 2]) == 1 &&
    as.integer(h$rank[duplicated(h$rank)]) >= 10) {
    return("jacks_better")
  } else if (length(r$lengths[r$lengths == 2]) == 1) {
    return("one_pair")
  } else {
    return("high_card")
  }
}
