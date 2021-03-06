#' @title Dashboard Header
#' @name operDashHeader
#'
#' @description A função operDashHeader é a função reponsável por adicionar
#' elementos na barra superior da página.
#'
#'
#' @param left_menu Itens que serão adicionados a esquerda da barra superior.
#' @param righ_menu Itens que serão adicionados a direita da barra superior.
#'
#'
#' @export

operDashHeader <- function(left_menu = NULL, righ_menu = NULL) {

  shiny::tags$header(
    class="main-header",

    # Header Navbar
    shiny::tags$nav(
      class="navbar navbar-static-top",
      # Sidebar toggle button
      shiny::tags$a(
        href="#",
        class="sidebar-toggle",
        `data-toggle`="push-menu",
        role="button",
        shiny::icon("bars")
      ),

      # Left menu
      shiny::tags$div(
        class="navbar-cutom-menu",
        style = "float: left; margin-left: 10px;",
        shiny::tags$div(tags$ul(
          class="nav navbar-nav",
          left_menu
        )
      )
    ),

    # Right menu
    shiny::tags$div(
      class="navbar-custom-menu",
      shiny::tags$ul(
        class="nav navbar-nav",
        righ_menu
      )
    )
  )
)

}
