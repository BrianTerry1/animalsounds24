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
animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " goes ", sound, "!")
}
