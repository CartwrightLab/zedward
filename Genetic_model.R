
#' @param world To whom the message is directed
#' @return A character vector
#' @export

hello_world <- function(workd = "World" ) {
  glue::glue("Hello {world}")
}

devtools::document()
devtools::check()
