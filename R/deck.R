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
