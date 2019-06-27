#' @title Dashboard Scripts footer
#' @name footerScriptsDash
#'
#'
#' @param ... Items to put in the scripts footer by dashboard
#' .
#'
#'
#' @export


footerScriptsDash <- function(...) {
  tagList(
    # includeScript(system.file("oper-0.1.0/js/popper.min.js", package = "operDash")),
    # includeScript(system.file("oper-0.1.0/js/plugins/metisMenu/jquery.metisMenu.js", package = "operDash")),
    # includeScript(system.file("oper-0.1.0/js/slimscroll/jquery.slimscroll.min.js", package = "operDash")),
    # includeScript(system.file("oper-0.1.0/js/operDash.js", package = "operDash")),
    # includeScript(system.file("oper-0.1.0/js/pace/pace.min.js", package = "operDash")),
    # includeScript(system.file("oper-0.1.0/js/end.js", package = "operDash")),
    htmltools::tags$script(src="inst/assets/js/popper.min.js"),
    tags$script(src="inst/assets/js/plugins/metisMenu/jquery.metisMenu.js"),
    tags$script(src="inst/assets/js/slimscroll/jquery.slimscroll.min.js"),
    tags$script(src="inst/assets/js/operDash.js"),
    tags$script(src="inst/assets/js/pace/pace.min.js"),

    tags$script(src="inst/assets/js/end.js"),
    ...
  )

}
