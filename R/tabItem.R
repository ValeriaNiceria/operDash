#' @title tabItem
#' @name tabItem
#'
#' @description descricao
#'
#' @param tabName name to tab.
#' @param ... Items to put in the dashboard body.
#'
#' @export


tabItem <- function(tabName = NULL, ...) {
  if (is.null(tabName))
    stop("É necessário adicionar o tabName")

  shiny::tagList(
    tags$div(
      class="col-lg-12 shiny-oper-tab-content",
      id = paste0("shiny-tab-", tabName),
      style = "visibility:hidden; display: none;",

      ...

    ),

    shiny::singleton(
      shiny::includeScript(
        system.file("js/shiny-oper-tabs.js",
                    package = "operDash")
      )
    )
  )

}
