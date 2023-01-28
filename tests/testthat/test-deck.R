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
