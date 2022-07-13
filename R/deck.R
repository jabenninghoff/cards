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
