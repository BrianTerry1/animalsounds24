#' Say what animal makes what sound
#'
#' A function which takes two character strings
#' and says what animal makes what sound.
#' Check out [paste0 here][base::paste0()]!
#'
#' @param animal A character string.
#' @param sound A character string.
#'
#' @return A character string saying what animal makes what sound.
#' @export
#'
#' @examples
animal_sounds <- function(animal, sound = NULL) {
  #stopifnot(is.character(animal) & length(animal) == 1)
  #stopifnot(is.character(sound) & length(sound) == 1)
  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort("`animal` must be a single string!")
  }

  if (is.null(sound)){
    paste0("The ", animal, " makes no sound!")
  }
  else {
    if (!rlang::is_character(sound, n = 1)) {
      cli::cli_abort("`sound` must be a single string!")
    }

    paste0("The ", animal, " goes ", sound, "!")
  }
}
