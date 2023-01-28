int_deck <- as.integer(0:51)

# new_deck
test_that("new_deck returns integers 0-51", {
  expect_identical(new_deck(), int_deck)
})
