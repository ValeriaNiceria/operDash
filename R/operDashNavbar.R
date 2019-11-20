#' @title Dashboard Navbar
#' @name operDashNavbar
#'
#' @description descricao
#'
#' @param ... dados
#'
#'
#' @export
operDashNavbar <- function(brand = NULL, brand_link = NULL, navbar_left = NULL, navbar_right = NULL) {
  brand_link <- if (!is.null(brand_link)) brand_link else "#"

  shiny::tags$nav(
    class="navbar navbar-static-top",
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



navbarLeft <- function(...) {
  shiny::tags$div(
    class="navbar-collapse pull-left collapse",
    id="navbar-collapse",
    `aria-expanded`="false",
    style="height: 1px;",
    shiny::tags$ul(
      class="nav navbar-nav",
      ...
    )
  )
}


navbarRight <- function(...) {
  shiny::tags$div(
    class="navbar-custom-menu",
    shiny::tags$ul(
      class="nav navbar-nav",
      ...
    )
  )
}


navbarItem <- function(text = NULL, tab_name = NULL, href = NULL) {
  shiny::tags$li()
}
