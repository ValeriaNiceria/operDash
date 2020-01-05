#' @title Dashboard Sidebar
#' @name operDashSidebar
#'
#' @description A função operDashSidebar é a função responsável por agrupar os
#' elementos que ficaram a esquerda da página.
#
#' @param icon Elemento que ficará visível quando a sidebar estiver colapsada.
#' @param title ELemento que ficará visível quando a sidebar estiver aberta.
#' @param sidebar_user_panel Um paínel de informações do usuário conectado no sistema. \code{sidebarUserPanel}
#' @param sidebar_menu Responsável por agrupar os itens do menu. \code{sidebarMenu}
#'
#' @seealso \code{\link{sidebarUserPanel}}, \code{\link{sidebarMenu}}.
#'
#' @export
operDashSidebar <- function(icon = NULL, title = NULL, sidebar_user_panel = NULL, sidebar_menu = NULL, fixed = FALSE) {

  class_aside = "main-sidebar"
  if (fixed) {
    class_aside = "main-sidebar position-fixed"
  }

  if (is.null(icon)) {
    icon = img("https://raw.githubusercontent.com/ValeriaNiceria/operDash/master/inst/img/logo_computer.png")
  }

  shiny::tags$aside(
    class=class_aside,
    shiny::tags$section(
      class="sidebar",
      shiny::tags$div(
        class="oper-brand",
        shiny::tags$div(
          class="brand-icon",
          icon
        ),
        shiny::tags$div(
          class="brand-title",
          title
        )
      ),
      sidebar_user_panel,
      sidebar_menu
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
  image_link = if (!is.null(image)) image else "https://raw.githubusercontent.com/ValeriaNiceria/operDash/master/inst/img/user.png"
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
#' @param icon Ícone que será exibido antes do texto
#' @param tab_name Aqui deverá ser colocado o mesmo nome do tabItem que será
#' ativado ao clicar nesse item (não podendo utilizar espaço nesse nome)
#' @param href Link - Endereço externo
#' @param ... sidebarSubItem \code{sidebarSubItem}
#'
#' @seealso \code{\link{sidebarSubItem}}.
#'
#' @export
sidebarItem <- function(..., text = NULL, icon = NULL, tab_name = NULL, href = NULL) {

  itens <- list(...)

  onclick_item = paste0(
    "$('.shiny-oper-tab-content').hide();",
    "$('.shiny-oper-tab-content').trigger('hide');",
    "$('.shiny-oper-tab-content').trigger('hidden');",
    "$('#shiny-tab-", tab_name, "').show();",
    "$('#shiny-tab-", tab_name, "').trigger('show');",
    "$('#shiny-tab-", tab_name, "').trigger('shown');"
  )


  if (length(itens) == 0) {

    shiny::tags$li(
      class="link-sidebar",
      shiny::tags$a(
        id = if (!is.null(tab_name)) paste0("#shiny-tab-", tab_name, "_tab_id"),
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
#' @param icon Ícone que será exibido antes do texto
#' @param tab_name Aqui deverá ser colocado o mesmo nome do tabItem que será
#' ativado ao clicar nesse item (não podendo utilizar espaço nesse nome)
#' @param href Link - Endereço externo
#'
#'
#' @export
sidebarSubItem <- function(text = NULL, icon = NULL, tab_name = NULL, href = NULL) {

  onclick_item = paste0(
    "$('.shiny-oper-tab-content').hide();",
    "$('.shiny-oper-tab-content').trigger('hide');",
    "$('.shiny-oper-tab-content').trigger('hidden');",
    "$('#shiny-tab-", tab_name, "').show();",
    "$('#shiny-tab-", tab_name, "').trigger('show');",
    "$('#shiny-tab-", tab_name, "').trigger('shown');"
  )

  shiny::tags$a(
    id = if (!is.null(tab_name)) paste0("#shiny-tab-", tab_name, "_tab_id"),
    href = if (!is.null(href)) href else "javascript:void(0)",
    onclick = if (is.null(href)) onclick_item,
    icon,
    shiny::tags$span(text)
  )

}

