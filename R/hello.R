#' Return a friendly message
#'
#' @param world A character vector to whom the message is directed
#'
#' @return A character vector
#'
#' @export
hello_world <- function(world = "World") {
  glue::glue("Hello {world}")
}


