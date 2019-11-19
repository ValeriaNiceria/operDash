#' @title Dashboard Header
#' @name operDashHeader
#'
#' @description A função operDashHeader é a função reponsável por adicionar
#' elementos na barra superior da página.
#'
#'
#' @param title Título que será exibido quando a barra superior estiver expandida.
#' @param logo Um ícone ou imagem que será exibida quando a barra superior estiver comprimida.
#' @param left_menu Itens que serão adicionados a esquerda da barra superior.
#' @param righ_menu Itens que serão adicionados a direita da barra superior.
#'
#'
#' @export

operDashHeader <- function(..., title = NULL, logo = NULL, left_menu = NULL, righ_menu = NULL) {

  if (!is.null(logo)) {
    logo =  shiny::tags$a(href="#", class="logo",
                          if (!is.null(logo)) shiny::tags$span(class="logo-mini", logo),
                          if (!is.null(title)) shiny::tags$span(class="logo-lg", title)
    )
  }

  shiny::tags$header(
    class="main-header",

    # Logo
    logo,

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
