# eval_hand_phe
test_that("eval_hand_phe returns correct hand rankings", {
  # eval_hand_phe doesn't currently support Royal Flush, returns Straight Flush
  expect_identical(eval_hand_phe(c(40L, 48L, 32L, 36L, 44L)), "Straight Flush")
  expect_identical(eval_hand_phe(c(40L, 28L, 32L, 36L, 44L)), "Straight Flush")
  expect_identical(eval_hand_phe(c(4L, 0L, 48L, 8L, 12L)), "Straight Flush") # ace low
  expect_identical(eval_hand_phe(c(49L, 50L, 51L, 48L, 47L)), "Four of a Kind")
  expect_identical(eval_hand_phe(c(48L, 50L, 49L, 47L, 46L)), "Full House")
  expect_identical(eval_hand_phe(c(40L, 48L, 28L, 36L, 44L)), "Flush")
  expect_identical(eval_hand_phe(c(44L, 36L, 48L, 40L, 33L)), "Straight")
  expect_identical(eval_hand_phe(c(40L, 49L, 44L, 50L, 48L)), "Three of a Kind")
  expect_identical(eval_hand_phe(c(48L, 47L, 49L, 43L, 46L)), "Two Pair")
  # eval_hand_phe doesn't currently support Jacks or Better, returns "One Pair"
  expect_identical(eval_hand_phe(c(28L, 36L, 37L, 24L, 32L)), "One Pair")
  expect_identical(eval_hand_phe(c(32L, 33L, 20L, 24L, 28L)), "One Pair")
  expect_identical(eval_hand_phe(c(29L, 40L, 36L, 44L, 48L)), "High Card")

  # regressions
  expect_identical(eval_hand_phe(c(12L, 9L, 0L, 8L, 16L)), "One Pair")
})
