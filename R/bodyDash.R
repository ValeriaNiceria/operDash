#' @title Dashboard Body
#' @name bodyDash
#'
#'
#' @param ... Items to put in the dashboard body.
#'
#'
#'
#' @export


bodyDash <- function(...) {
  tags$div(class="wrapper wrapper-content",
            tags$div(class = "tab-content",

              ...

              )

           )
}
