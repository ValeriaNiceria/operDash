#' @title Dashboard Menu Item
#' @name menuItem
#'
#'
#' @param text O texto que será exibido.
#' @param icon Um ícone para o item do menu.
#' @param tabName O nome do tabItem que o menuItem está relacionado.
#' @param href Um endereço externo.
#'
#'
#' @examples
#'menuItem(
#'  text = "Home",
#'  icon = icon("home"),
#'  tabName = "home",
#'  href = "http..."
#')
#'
#' @export


menuItem <- function(text = "Link", icon = NULL, tabName = NULL, href = NULL) {
      isTabItem <- FALSE
      if (!is.null(tabName)) {
        isTabItem <- TRUE
        href <- "javascript:void(0)"
        id = paste0("#shiny-tab-", tabName, "_tab_id")
        onclick <- paste0(
          "$('.shiny-oper-tab-content').hide();",
          "$('.shiny-oper-tab-content').trigger('hide');",
          "$('.shiny-oper-tab-content').trigger('hidden');",
          "$('.tab-link').removeClass('active');",
          "$('#shiny-tab-", tabName, "').show();",
          "$('#shiny-tab-", tabName, "').trigger('show');",
          "$('#shiny-tab-", tabName, "').trigger('shown');",
          "$('#shiny-tab-", tabName, "_tab_id", "').addClass('active');"
        )
      } else if (is.null(href)) {
        href <- "#"
      }

      idMenu = paste0("tab-", tabName)

      shiny::tags$li(
        shiny::tags$a(
          href=href,
          id = if(isTabItem) id else NULL,
          onclick = if(isTabItem) onclick else NULL,
          icon,
          text)
      )
}


#' @title Menu Left Base
#' @name menuLeft
#'
#'
#' @param ... Itens que serão adicionados a esquerda do menu.
#'
#'
#' @export

menuLeft <- function(...) {
  shiny::tags$ul(class="nav navbar-top-links mr-auto",
          list(...)
  )
}


#' @title Menu Right Base
#' @name menuRight
#'
#'
#' @param ... Itens que serão adicionados a direita do menu.
#'
#'
#' @export

menuRight <- function(...) {
  shiny::tags$ul(class="nav navbar-top-links navbar-right",
          list(...)
          )
}


#' @title Dashboard Menu Dropdown
#' @name menuDropdown
#'
#'
#' @param text O texto que será exibido.
#' @param icon Um ícone para o item do menu.
#' @param ... Itens que serão adicionados dentro do menu dropdown, usar o \code{\link{menuItem}}
#'
#'
#' @examples
#' menuDropdown(
#'  text = "List",
#'  menuItem(
#'    text = "Link1",
#'    tabName = "link1"
#'  )
#' )
#'
#' @export
menuDropdown <- function(text = "Link", icon = NULL, ...) {
  tags$li(class="dropdown",
          tags$a(`aria-expanded`="false",
                 `role`="button",
                 href="#",
                 class="dropdown-toggle",
                 `data-toggle`="dropdown",
                 icon,
                 text,
                 icon("caret-down")),
          tags$ul(`role`="menu",
                  class="dropdown-menu",
                  list(...)))
}

#' @title Dashboard navbarDash
#' @name navbarDash
#'
#' @param brandText Um texto ou imagem que será utilizado como brand
#' @param brandImg The brand image
#' @param linkBrand A link to brand
#' @param ... Items to put in the menu.
#'
#'
#' @seealso \code{\link{menuDropdown}}, \code{\link{menuItem}},
#'   \code{\link{menuLeft}}, \code{\link{menuRight}}.
#'
#'
#' @examples
#'
#'navbar = navbarDash(brand = "operDash",
#'                    menuLeft(
#'                      menuItem(text = "Home",
#'                               icon = icon("home"),
#'                               tabName = "home"),
#'
#'                      menuDropdown(text = "Lista", icon = icon("list"),
#'                                   menuItem(
#'                                     text = "Compras",
#'                                     tabName = "compras")
#'                      )
#'                    )
#'),
#'menuRight(
#'  notification(icon = icon("envelope"), label = "1",
#'               notificationItem(
#'                 icon = icon("user", class="fa-3x"),
#'                 title = "novo usuário",
#'                 message = "Foi um criado novo usuário",
#'                 time = "14:41"),
#'               notificationItem(
#'                 icon = icon("user", class="fa-3x"),
#'                 title = "novo usuário",
#'                 message = "Foi um criado novo usuário",
#'                 time = "14:41")
#'  ),
#'  menuItem(text = "Logout",
#'           icon = tags$i(class="fas fa-sign-out-alt"),
#'           tabName = "logout")
#' )
#')
#'
#' @export

navbarDash <- function(...,
                       brandText = NULL,
                       brandImg = NULL,
                       linkBrand = "#") {

  brand = NULL

  if (!is.null(brandImg)) {
    brand = brandImg
  } else if (!is.null(brandText)) {
    brand = shiny::tags$a(href=linkBrand,
                          brandText,
                          class="navbar-brand")
  }

  shiny::tags$div(class="row border-bottom white-bg", style = "margin-bottom: 20px",
                  shiny::tags$nav(class="navbar navbar-expand-lg navbar-static-top navbar-fixed-top",`role`="navigation",
                      brand,
                      shiny::tags$button(class="navbar-toggler",
                                  `type`="button",
                                  `data-toggle`="collapse",
                                  `data-target`="#navbar",
                                  `aria-expanded`="false",
                                  tags$i(class="fa fa-reorder")),
                      shiny::tags$div(class="navbar-collapse collapse",
                               id="navbar",
                                 list(...)
                               )
            )
    )
}
