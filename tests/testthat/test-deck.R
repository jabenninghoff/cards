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

# eval_hand
test_that("eval_hand returns correct hand rankings", {
  expect_identical(eval_hand(standard_deck[48:52, ]), "royal_flush")
  expect_identical(eval_hand(standard_deck[47:51, ]), "straight_flush")
  expect_identical(eval_hand(standard_deck[c(40:43, 52), ]), "straight_flush") # ace low
  expect_identical(eval_hand(standard_deck[c(13, 26, 39, 51, 52), ]), "four_ofakind")
  expect_identical(eval_hand(standard_deck[c(13, 26, 38, 51, 52), ]), "full_house")
  expect_identical(eval_hand(standard_deck[c(47, 49:52), ]), "flush")
  expect_identical(eval_hand(standard_deck[c(35, 49:52), ]), "straight")
  expect_identical(eval_hand(standard_deck[c(11, 26, 39, 51, 52), ]), "three_ofakind")
  expect_identical(eval_hand(standard_deck[c(11, 25, 39, 51, 52), ]), "two_pair")
  expect_identical(eval_hand(standard_deck[c(33:36, 49), ]), "jacks_better")
  expect_identical(eval_hand(standard_deck[c(32:35, 48), ]), "one_pair")
  expect_identical(eval_hand(standard_deck[c(34, 49:52), ]), "high_card")
})
