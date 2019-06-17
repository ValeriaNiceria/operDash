footerScriptsDash <- function(...) {
  tagList(
    tags$script(src="./R/footerDash.R"),
    tags$script(src="js/popper.min.js"),
    tags$script(src="js/plugins/metisMenu/jquery.metisMenu.js"),
    tags$script(src="js/plugins/slimscroll/jquery.slimscroll.min.js"),
    tags$script(src="js/operDash.js"),
    
    ...
  )

}