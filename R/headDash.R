#' @title Dashboard head
#' @name headDash
#'
#'
#' @param ... Items to put in the dashboard head.
#'
#'
#' @export


headDash <- function(...) {
  oper_css <- "oper-0.1.0/css/customer.css"
  oper_js <- "oper-0.1.0/js/operDash.js"
  bootstrap_css <- "bootstrap-4.1.0/bootstrap.min.css"
  bootstrap_js <- "bootstrap-4.1.0/bootstrap.js"
  animate_css <- "animate-3.5.0/animate.css"
  init_js <- "oper-0.1.0/js/init.js"

  shiny::tags$head(
    shiny::tags$link(rel="stylesheet", type="text/css", href=bootstrap_css),
    shiny::tags$link(rel="stylesheet", type="text/css", href=animate_css),
    shiny::tags$link(rel="stylesheet", type="text/css", href=oper_css),
    shiny::tags$script(src=init_js),
    ...
  )
}
