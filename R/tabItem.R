#' @name tabItem
#'
#'
#' @param tabName.
#' @param ... Items to put in the dashboard body.
#'
#'
#' @export

tabItem <- function(tabName = NULL, ...) {
  if (is.null(tabName))
    stop("Need tabName")


  shiny::tags$div(
    role = "tabpanel",
    class = "tab-pane  container-fluid",
    id = paste0("shiny-tab-", tabName),
    ...
  )
}
