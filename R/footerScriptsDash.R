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
    tags$script(src="js/popper.min.js"),
    tags$script(src="js/plugins/metisMenu/jquery.metisMenu.js"),
    tags$script(src="js/plugins/slimscroll/jquery.slimscroll.min.js"),
    tags$script(src="js/operDash.js"),
    tags$script(src="js/pace/pace.min.js"),

    tags$script(src="js/end.js"),
    ...
  )

}
