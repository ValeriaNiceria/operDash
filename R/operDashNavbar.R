#' @title Dashboard Navbar
#' @name operDashNavbar
#'
#' @description Função responsável por criar o menu top.
#'
#' @param brand Elemento que será utilizado como marca do site, podendo utilizar imagem ou texto.
#' @param brand_link Link ao clicar na marca.
#' @param navbar_left Agrupa os elementos do lado esquerdo da navbar. \code{navbarLeft}
#' @param navbar_right Agrupa os elementos do lado direito da navbar. \code{navbarRight}
#' @param color Cor da navbar, utilizar o valor da cor em hexadecimal.
#'
#'
#' @export
operDashNavbar <- function(brand = NULL, brand_link = NULL, navbar_left = NULL, navbar_right = NULL, color = "#283B4F") {
  brand_link <- if (!is.null(brand_link)) brand_link else "./"

  shiny::tags$nav(
    class="navbar navbar-static-top",
    style=paste0("background-color:", color),
    shiny::tags$div(
      class="container",
      # Brand ----
      shiny::tags$div(
        class="navbar-header",
        shiny::tags$a(
          href=brand_link,
          class="navbar-brand",
          brand
        )
      ),
      # Ícone menu sanduíche
      shiny::tags$button(
        type="button",
        class="navbar-toggle collapsed",
        `data-toggle`="collapse",
        `data-target`="#navbar-collapse",
        `aria-expanded`="false",
        shiny::icon("bars")
      ),
      # Navbar Left
      navbar_left,
      # Navbar Right
      navbar_right
    )
  )

}


#' @title Navbar Left
#' @name navbarLeft
#'
#' @description Função responsável por agrupar os elementos do navbar do lado esquerdo.
#'
#' @param ... Elementos, como por exemplo. \code{navbarItem}
#'
#'
#' @export
navbarLeft <- function(...) {
  shiny::tags$div(
    class="navbar-collapse pull-left collapse",
    id="navbar-collapse",
    style="height: 1px;",
    shiny::tags$ul(
      class="nav navbar-nav",
      ...
    )
  )
}


#' @title Navbar Right
#' @name navbarRight
#'
#' @description Função responsável por agrupar os elementos do navbar do lado direito.
#'
#' @param ... Elementos, como por exemplo. \code{navbarItem}
#'
#'
#' @export
navbarRight <- function(...) {
  shiny::tags$div(
    class="navbar-custom-menu",
    shiny::tags$ul(
      class="nav navbar-nav",
      ...
    )
  )
}


#' @title Navbar Item
#' @name navbarItem
#'
#' @description Essa função é responsável por criar itens do menu.
#'
#' @param text O texto que será exibido
#' @param icon Ícone que será exibido antes do texto
#' @param tab_name Aqui deverá ser colocado o mesmo nome do tabItem que será
#' ativado ao clicar nesse item (não podendo utilizar espaço nesse nome)
#' @param href Link - Endereço externo
#'
#' @seealso \code{\link{sidebarSubItem}}.
#'
#' @export
navbarItem <- function(text = NULL, icon = NULL, tab_name = NULL, href = NULL) {

  onclick_item = paste0(
    "$('.shiny-oper-tab-content').hide();",
    "$('.shiny-oper-tab-content').trigger('hide');",
    "$('.shiny-oper-tab-content').trigger('hidden');",
    "$('#shiny-tab-", tab_name, "').show();",
    "$('#shiny-tab-", tab_name, "').trigger('show');",
    "$('#shiny-tab-", tab_name, "').trigger('shown');"
  )


  shiny::tags$li(
    class="link-navbar",
    shiny::tags$a(
      id = if (!is.null(tab_name)) paste0("#shiny-tab-", tab_name, "_tab_id"),
      href = if (!is.null(href)) href else "javascript:void(0)",
      onclick = if (is.null(href)) onclick_item,
      icon,
      shiny::tags$span(text)
    )
  )

}


#' @title Navbar Group
#' @name navbarGroup
#'
#' @description Função responsável por agrupar os elementos e assim criar um dropdown.
#'
#' @param ... Elementos, como por exemplo. \code{navbarItem}
#' @param text Título do grupo ou dropdown.
#'
#'
#' @export
navbarGroup <- function(..., text = NULL) {
  shiny::tags$li(
    class="dropdown",
    shiny::tags$a(
      href="#",
      class="dropdown-toggle",
      `data-toggle`="dropdown",
      text
    ),
    shiny::tags$ul(
      class="dropdown-menu",
      role="menu",
      ...
    )
  )
}
