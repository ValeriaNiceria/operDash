#' @title tabItem
#' @name tabItem
#'
#' @description Função responsável por agrupar conteúdos que serão exibidos no corpo da página.
#'
#' @param tab_name Um nome para o tabItem o mesmo nome deverá ser informado no \code{sidebarItem}
#' ou \code{sidebarSubItem}.
#' @param ... Conteúdo que será adicionado no corpo da página.
#'
#' @export


tabItem <- function(tab_name = NULL, title = NULL, ...) {
  if (is.null(tab_name))
    stop("É necessário adicionar o tab_name")

  if (!is.null(title)) {
    title = shiny::tags$section(
      class="content-header",
      shiny::tags$h1(title)
    )
  }

  shiny::tagList(
    tags$div(
      class="shiny-oper-tab-content",
      id = paste0("shiny-tab-", tab_name),
      style = "visibility:hidden; display: none;",

      title,

      tags$section(
        class="content",

        ...
      )

    ),

    shiny::singleton(
      shiny::includeScript(
        system.file("oper-0.1.0/js/shiny-oper-tabs.js",
                    package = "operDash")
      )
    )
  )

}
