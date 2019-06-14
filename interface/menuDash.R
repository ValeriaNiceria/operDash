menuItem <- function(text = "Link", icon = NULL, tabName = NULL, href = NULL) {
      # icon = if(!is.null(icon)) tags$i(class=icon)
      
      isTabItem <- FALSE
      if (!is.null(tabName)) {
        isTabItem <- TRUE
        href <- paste0("#shiny-tab-", tabName)
      } else if (is.null(href)) {
        href <- "#"
      }
      
      idMenu = paste0("tab-", tabName)
      
      tags$li(
        tags$a(href=href, icon, text, `data-toggle` = if (isTabItem) "tab", `data-value` = if (!is.null(tabName)) tabName, id = idMenu)
      )
}


menuLeft <- function(...) {
  tags$ul(class="nav  mr-auto",
          list(...)
  )
}


menuRight <- function(...) {
  tags$ul(class="nav navbar-right",
          list(...)
          )
}


menuDropdown <- function(..., text = "Link") {
  tags$li(class="dropdown",
          tags$a(`aria-expanded`="false", `role`="button", href="#", class="dropdown-toggle", `data-toggle`="dropdown", text),
          tags$ul(`role`="menu", class="dropdown-menu",
                  list(...)))
}


menuDash <- function(..., title_site = "title_site", styleTitle = NULL, link_title = "#") {
    tags$div(class="row border-bottom white-bg",
             tags$nav(class="navbar navbar-expand-lg navbar-static-top navbar-fixed-top", `role`="navigation",
                      tags$a(href=link_title, title_site, class="navbar-brand", style=styleTitle),
                      tags$button(class="navbar-toggler", `type`="button", `data-toggle`="collapse", `data-target`="#navbar", `aria-expanded`="false",
                                  tags$i(class="fa fa-reorder")),
                      tags$div(class="navbar-collapse collapse", id="navbar",
                                 list(...)
                               )
            )
    )
}
  
  
  # HTML(sprintf('
  #       <div class="row border-bottom white-bg">
  #              <nav class="navbar navbar-expand-lg navbar-static-top" role="navigation">
  #              
  #              <a href="#" class="navbar-brand">Inspinia</a>
  #              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-label="Toggle navigation">
  #              <i class="fa fa-reorder"></i>
  #              </button>
  #              
  #              <!--</div>-->
  #              <div class="navbar-collapse collapse" id="navbar">
  #              <ul class="nav navbar-nav mr-auto">
  #              <li class="active">
  #              <a aria-expanded="false" role="button" href="layouts.html"> Back to main Layout page</a>
  #              </li>
  #              <li class="dropdown">
  #              <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item</a>
  #              <ul role="menu" class="dropdown-menu">
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              </ul>
  #              </li>
  #              <li class="dropdown">
  #              <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item</a>
  #              <ul role="menu" class="dropdown-menu">
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              </ul>
  #              </li>
  #              <li class="dropdown">
  #              <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item</a>
  #              <ul role="menu" class="dropdown-menu">
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              </ul>
  #              </li>
  #              <li class="dropdown">
  #              <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item</a>
  #              <ul role="menu" class="dropdown-menu">
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              </ul>
  #              </li>
  #              
  #              </ul>
  #              <ul class="nav navbar-top-links navbar-right">
  #              <li>
  #              <a href="login.html">
  #              <i class="fa fa-sign-out"></i> Log out
  #              </a>
  #              </li>
  #              </ul>
  #              </div>
  #              </nav>
  #              </div>
  #              '))