#' @title Dashboard head
#' @name headDash
#'
#'
#' @param ... Items to put in the dashboard head.
#'
#'
#' @export


headDash <- function(...) {
  tags$head(
    tags$link(rel="stylesheet", type="text/css", href="inst/bootstrap-4.1.0/bootstrap.min.css"),
    tags$link(rel="stylesheet", type="text/css", href="inst/animate-3.5.0/animate.css"),
    tags$link(rel="stylesheet", type="text/css", href="inst/oper-0.1.0/css/customer.css"),
    tags$script(src="inst/oper-0.1.0/js/init.js"),
    ...
  )
}
