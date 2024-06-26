testthat::test_that("animal_sounds produces expected strings", {
  #dog_woof <- animal_sounds("dog", "woof")
  #testthat::expect_equal(dog_woof, "The dog goes woof!")
  #testthat::expect_equal(animal_sounds("cat", "miaow"), "The cat goes miaow!")
  if (!rlang::is_character(sound, 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead."),
      class = "error_not_single_string"
    )
  }

  if (!rlang::is_character(animal, 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead."),
      class = "error_not_single_string"
    )
  }
})

