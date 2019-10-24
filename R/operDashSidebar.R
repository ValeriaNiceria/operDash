#' @title Dashboard Sidebar
#' @name operDashSidebar
#'
#' @description A função operDashSidebar é a função responsável por agrupar os
#' elementos que ficaram a esquerda da página.
#
#' @param sidebarUserPanel Um paínel de informações do usuário conectado no sistema. \code{sidebarUserPanel}
#' @param sidebarMenu Responsável por agrupar os itens do menu. \code{sidebarMenu}
#'
#' @seealso \code{\link{sidebarUserPanel}}, \code{\link{sidebarMenu}}.
#'
#' @export
operDashSidebar <- function(sidebarUserPanel = NULL, sidebarMenu = NULL) {
  shiny::tags$aside(
    class="main-sidebar",
    shiny::tags$section(
      class="sidebar",
      sidebarUserPanel,
      sidebarMenu
    )
  )
}


#' @title User Panel
#' @name sidebarUserPanel
#'
#' @description A função sidebarUserPanel irá criar um paínel com informações sobre o usuário.
#'
#' @param name Nome do usuário
#' @param info Informações sobre o usuário, como por exemplo o status.
#' @param image Endereço da imagem
#'
#' @seealso \code{\link{operDashSidebar}}.
#'
#' @export
sidebarUserPanel <- function(name = NULL, info = NULL, image = NULL) {
  image_link = if (!is.null(image)) image else "https://raw.githubusercontent.com/ValeriaNiceria/operDash/master/inst/img/user.jpeg"
  shiny::tags$div(
    class="user-panel",
    shiny::tags$div(
      class="pull-left image",
      shiny::tags$img(src=image_link, class="img-circle", alt="User Image")
    ),
    shiny::tags$div(
      class="pull-left info",
      shiny::tags$p(name),
      info
    )
  )
}



#' @title Sidebar Menu
#' @name sidebarMenu
#'
#' @description A função sidebarMenu será responsável por agrupar os itens do menu.
#'
#' @param ... Itens que serão adicionados no menu, como por exemplo \code{sidebarItem}
#'
#' @seealso \code{\link{sidebarItem}}.
#'
#' @export
sidebarMenu <- function(...) {
  shiny::tags$ul(
    class="sidebar-menu",
    `data-widget`="tree",
    ...
  )
}


#' @title Sidebar Item
#' @name sidebarItem
#'
#' @description Essa função é responsável por criar itens do menu.
#'
#' @param text O texto que será exibido
#' @param icon Icone que será exibido antes do texto
#' @param tabName Aqui deverá ser colocado o mesmo nome do tabItem que será
#' ativado ao clicar nesse item (não podendo utilizar espaço nesse nome)
#' @param href Link - Endereço externo
#' @param sidebarSubItem sidebarSubItem \code{sidebarSubItem}
#'
#' @seealso \code{\link{sidebarSubItem}}.
#'
#' @export
sidebarItem <- function(text = NULL, ..., icon = NULL, tabName = NULL, href = NULL) {

  itens <- list(...)

  onclick_item = paste0(
    "$('.shiny-oper-tab-content').hide();",
    "$('.shiny-oper-tab-content').trigger('hide');",
    "$('.shiny-oper-tab-content').trigger('hidden');",
    "$('#shiny-tab-", tabName, "').show();",
    "$('#shiny-tab-", tabName, "').trigger('show');",
    "$('#shiny-tab-", tabName, "').trigger('shown');"
  )


  if (length(itens) == 0) {

    shiny::tags$li(
      class="link-sidebar",
      shiny::tags$a(
        id = if (!is.null(tabName)) paste0("#shiny-tab-", tabName, "_tab_id"),
        href = if (!is.null(href)) href else "javascript:void(0)",
        onclick = if (is.null(href)) onclick_item,
        icon,
        shiny::tags$span(text)
      )
    )
  } else {

    generateItensMenu <- function(itens) {
      lapply(1:length(itens), FUN = function(i) {

        shiny::tags$li(
          itens[[i]]
        )

      })
    }

    shiny::tags$li(
      class="treeview link-sidebar",
      shiny::tags$a(
        href="#",
        icon,
        shiny::tags$span(text),
        shiny::tags$span(
          class="pull-right-container",
          shiny::icon("angle-left", class="pull-right")
        )
      ),
      shiny::tags$ul(
        class="treeview-menu",
        generateItensMenu(itens)
      )
    )
  }

}


#' @title Sidebar SubItem
#' @name sidebarSubItem
#'
#' @description Essa função será responsável por criar sub menu.
#'
#' @param text O texto que será exibido
#' @param icon Icone que será exibido antes do texto
#' @param tabName Aqui deverá ser colocado o mesmo nome do tabItem que será
#' ativado ao clicar nesse item (não podendo utilizar espaço nesse nome)
#' @param href Link - Endereço externo
#'
#'
#' @export
sidebarSubItem <- function(text = NULL, icon = NULL, tabName = NULL, href = NULL) {

  onclick_item = paste0(
    "$('.shiny-oper-tab-content').hide();",
    "$('.shiny-oper-tab-content').trigger('hide');",
    "$('.shiny-oper-tab-content').trigger('hidden');",
    "$('#shiny-tab-", tabName, "').show();",
    "$('#shiny-tab-", tabName, "').trigger('show');",
    "$('#shiny-tab-", tabName, "').trigger('shown');"
  )

  shiny::tags$a(
    id = if (!is.null(tabName)) paste0("#shiny-tab-", tabName, "_tab_id"),
    href = if (!is.null(href)) href else "javascript:void(0)",
    onclick = if (is.null(href)) onclick_item,
    icon,
    shiny::tags$span(text)
  )

}

