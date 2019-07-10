#' @title Dashboard Menu Item
#' @name menuItem
#'
#'
#' @param text The menu text.
#' @param icon The menu icon.
#' @param tabName A name the tabItem.
#' @param href A link.
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


#' @title Menu Left Base
#' @name menuLeft
#'
#'
#' @param ... Items to put in the left menu.
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
#' @param ... Items to put in the left menu.
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
#' @param text The menu text.
#' @param icon The menu icon.
#' @param ... Items to put in the dropdown menu, using menuItem.
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
#' @param brand The brand
#' @param styleBrand Customer the CSS brand
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

navbarDash <- function(..., brandText = NULL, brandImg = NULL, styleBrand = NULL, linkBrand = "#") {

  brand = NULL

  if (!is.null(brandImg)) {
    brand = shiny::tags$a(href=linkBrand,
                          brand,
                          class="navbar-brand",
                          style=styleBrand)
  } else {
    brand = brandImg
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
