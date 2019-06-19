menuItem <- function(text = "Link", icon = NULL, tabName = NULL, href = NULL) {
      isTabItem <- FALSE
      if (!is.null(tabName)) {
        isTabItem <- TRUE
        href <- paste0("#shiny-tab-", tabName)
      } else if (is.null(href)) {
        href <- "#"
      }
      
      idMenu = paste0("tab-", tabName)
      
      tags$li(
        tags$a(href=href, 
               icon, text, 
               `data-toggle` = if (isTabItem) "tab", 
               `data-value` = if (!is.null(tabName)) tabName, 
               id = idMenu)
      )
}


menuLeft <- function(...) {
  tags$ul(class="nav navbar-top-links mr-auto",
          list(...)
  )
}


menuRight <- function(...) {
  tags$ul(class="nav navbar-top-links navbar-right",
          list(...)
          )
}


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


navbarDash <- function(..., brand = "brand", styleBrand = NULL, linkBrand = "#") {
    tags$div(class="row border-bottom white-bg",
             tags$nav(class="navbar navbar-expand-lg navbar-static-top navbar-fixed-top", 
                      `role`="navigation",
                      tags$a(href=linkBrand, 
                             brand, 
                             class="navbar-brand", 
                             style=styleBrand),
                      tags$button(class="navbar-toggler", 
                                  `type`="button", 
                                  `data-toggle`="collapse", 
                                  `data-target`="#navbar", 
                                  `aria-expanded`="false",
                                  tags$i(class="fa fa-reorder")),
                      tags$div(class="navbar-collapse collapse",
                               id="navbar",
                                 list(...)
                               )
            )
    )
}