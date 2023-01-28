int_deck <- as.integer(0:51)

# new_deck
test_that("new_deck returns integers 0-51", {
  expect_identical(new_deck(), int_deck)
})

# deal_hand
test_that("deal_hand returns 5 integers 0-51", {
  hand <- deal_hand(int_deck)
  expect_length(hand, 5L)
  expect_true(all(hand %in% int_deck))
})

# print_hand
test_that("print_hand returns a character vector", {
  hand <- c(5L, 6L, 19L, 46L, 16L)
  expect_identical(print_hand(hand), "3D 3H 6S KH 6C")
  expect_identical(print_hand(hand, collapse = TRUE), "3D 3H 6S KH 6C")
  expect_identical(print_hand(hand, collapse = FALSE), c("3D", "3H", "6S", "KH", "6C"))
})

# eval_hand
test_that("eval_hand returns correct hand rankings", {
  expect_identical(eval_hand(c(40L, 48L, 32L, 36L, 44L)), "royal_flush")
  expect_identical(eval_hand(c(40L, 28L, 32L, 36L, 44L)), "straight_flush")
  expect_identical(eval_hand(c(4L, 0L, 48L, 8L, 12L)), "straight_flush") # ace low
  expect_identical(eval_hand(c(49L, 50L, 51L, 48L, 47L)), "four_ofakind")
  expect_identical(eval_hand(c(48L, 50L, 49L, 47L, 46L)), "full_house")
  expect_identical(eval_hand(c(40L, 48L, 28L, 36L, 44L)), "flush")
  expect_identical(eval_hand(c(44L, 36L, 48L, 40L, 33L)), "straight")
  expect_identical(eval_hand(c(40L, 49L, 44L, 50L, 48L)), "three_ofakind")
  expect_identical(eval_hand(c(48L, 47L, 49L, 43L, 46L)), "two_pair")
  expect_identical(eval_hand(c(28L, 36L, 37L, 24L, 32L)), "jacks_better")
  expect_identical(eval_hand(c(32L, 33L, 20L, 24L, 28L)), "one_pair")
  expect_identical(eval_hand(c(29L, 40L, 36L, 44L, 48L)), "high_card")

  # regressions
  expect_identical(eval_hand(c(12L, 9L, 0L, 8L, 16L)), "one_pair")
})
