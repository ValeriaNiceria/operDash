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
  bootstrap_css <- "bootstrap-4.1.0/bootstrap.min.css"
  animate_css <- "animate-3.5.0/animate.css"
  init_js <- "oper-0.1.0/js/init.js"

  tags$head(
    shiny::includeCSS(
      system.file("bootstrap-4.1.0/bootstrap.min.css",
                  package = "operDash")
    ),
    shiny::includeCSS(
      system.file("animate-3.5.0/animate.css",
                  package = "operDash")
    ),
    shiny::includeCSS(
      system.file("oper-0.1.0/css/customer.css",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/init.js",
                  package = "operDash")
    ),
    shiny::tags$meta(
      name="viewport",
      content="width=device-width, initial-scale=1.0"
    ),

    ...
  )
}
