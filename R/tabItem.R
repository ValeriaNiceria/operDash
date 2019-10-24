#' @title tabItem
#' @name tabItem
#'
#' @description Função responsável por agrupar conteúdos que serão exibidos no corpo da página.
#'
#' @param tabName Um nome para o tabItem o mesmo nome deverá ser informado no \code{sidebarItem}
#' ou \code{sidebarSubItem}.
#' @param ... Conteúdo que será adicionado no corpo da página.
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
