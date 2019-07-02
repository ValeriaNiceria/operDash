#' @title Sidebar
#' @name sidebarDash
#'
#'
#' @export

sidebarDash <- function(...) {

  itens <- list(...)

  generateItensMenu <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      class <- ifelse(i == 1, "active", NULL)

      shiny::tags$li(
        class = class,

        itens[[1]]
      )

    })
  }

  generateItensMenu(itens)

}

#' @title SidebarItem
#' @name sidebarItem
#'
#'
#' @export

sidebarItem <- function(label = NULL, icon = NULL, tabName = NULL, href = NULL) {
  isTabItem <- FALSE
  if (!is.null(tabName)) {
    isTabItem <- TRUE
    href <- paste0("#shiny-tab-", tabName)
  } else if (is.null(href)) {
    href <- "#"
  }

  icon <- ifelse(is.null(icon), icon("link"), icon)

  idMenu = paste0("tab-", tabName)

    shiny::tags$a(href=href,
                  `data-toggle` = if (isTabItem) "tab",
                  `data-value` = if (!is.null(tabName)) tabName,
                  id = idMenu,
                  icon,
                  shiny::tags$span(
                    class="nav-label",
                    label
                  )
                )
}


sidebarDropdown <- function() {

}
