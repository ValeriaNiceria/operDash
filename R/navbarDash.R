#' @title Menu Item
#' @name menuItem
#'
#'
#' @param text O texto que sera exibido
#' @param icon O icone que sera exibido no menuItem
#' @param tabName O mesmo nome que será utilizado no tabItem
#' @param href Um link
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
        href <- paste0("#shiny-tab-", tabName)
      } else if (is.null(href)) {
        href <- "#"
      }

      idMenu = paste0("tab-", tabName)

      shiny::tags$li(
        shiny::tags$a(href=href,
               icon, text,
               `data-toggle` = if (isTabItem) "tab",
               `data-value` = if (!is.null(tabName)) tabName,
               id = idMenu)
      )
}


#' @title Base do menu a esquerda
#' @name menuLeft
#'
#'
#' @param ... Itens que serao adicionados a esquerda do menu.
#'
#'
#' @export

menuLeft <- function(...) {
  shiny::tags$ul(class="nav navbar-top-links mr-auto",
          list(...)
  )
}


#' @title Base do menu a direita
#' @name menuRight
#'
#'
#' @param ... Itens que serao adicionados a direta do menu
#'
#'
#' @export

menuRight <- function(...) {
  shiny::tags$ul(class="nav navbar-top-links navbar-right",
          list(...)
          )
}


#' @title Menu Dropdown
#' @name menuDropdown
#'
#'
#' @param text Um texto para o dropdown
#' @param icon Um icone para o dropdown
#' @param ... Itens que serao adicionados no dropdown, use o menuItem
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
#' @param brandText Um texto que sera exibido como brand no menu
#' @param brandImg  Uma imagem que sera utilizada como brand no menu
#' @param linkBrand Um link para brand, utilizada no menu
#' @param ...  Itens que serao adicionados no menu
#'
#'
#' @seealso \code{\link{menuDropdown}}, \code{\link{menuItem}},
#'   \code{\link{menuLeft}}, \code{\link{menuRight}}.
#'
#'
#' @examples
#'
#'navbar = navbarDash(brandText = "operDash",
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

  shiny::tags$div(class="row border-bottom",
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
