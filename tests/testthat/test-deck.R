# a standard deck of 52 cards
standard_deck <- structure(
  list(
    rank = structure(
      c(
        1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 12L, 13L,
        1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 12L, 13L,
        1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 12L, 13L,
        1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 12L, 13L
      ),
      levels = c(
        "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"
      ), class = "factor"
    ),
    suit = structure(
      c(
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L,
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L,
        3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L,
        4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L
      ),
      levels = c("C", "D", "H", "S"), class = "factor"
    )
  ),
  class = "data.frame", row.names = c(NA, -52L)
)

# new_deck
test_that("new_deck returns 52 cards", {
  expect_identical(new_deck(), standard_deck)
})

# deal_hand
test_that("deal_hand returns 5 cards from a standard deck", {
  hand <- deal_hand(standard_deck)
  expect_identical(nrow(hand), 5L)
  expect_identical(hand, standard_deck[rownames(hand), ])
})
