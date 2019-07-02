#' @title Dashboard Body
#' @name bodyDash
#'
#'
#' @param ... Items to put in the dashboard body.
#'
#'
#' @export


bodyDash <- function(...) {

  shiny::tags$div(class = "tab-content",

      ...

  )

}
