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
  oper_js <- "oper-0.1.0/js/operDash.js"
  poper_js <- "oper-0.1.0/js/popper.min.js"
  metismenu_js <- "oper-0.1.0/js/metis_menu/jquery.metisMenu.js"
  slimscroll_js <- "oper-0.1.0/js/slimscroll/jquery.slimscroll.min.js"
  pace_js <- "oper-0.1.0/js/pace/pace.min.js"
  end_js <- "oper-0.1.0/js/end.js"


  tagList(
    tags$script(src= poper_js),
    tags$script(src= metismenu_js),
    tags$script(src= slimscroll_js),
    tags$script(src= oper_js),
    tags$script(src = pace_js),

    tags$script(src= end_js),
    ...
  )

}
