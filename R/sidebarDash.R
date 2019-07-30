#' @title Sidebar
#' @name sidebarDash
#'
#'
#' @export

sidebarDash <- function(...) {

  itens <- list(...)

  generateItensMenu <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      shiny::tags$li(
        class = if (i == 1) "active" else NULL,
        itens[[i]]
      )

    })
  }

  tagList(
    generateItensMenu(itens)
  )

}

#' @title SidebarItem
#' @name sidebarItem
#'
#'
#' @export

sidebarItem <- function(label = NULL, icon = NULL, tabName = NULL) {

  shiny::tags$a(class="tab-link",
                id = paste0("#shiny-tab-", tabName, "_tab_id"),
                href = "javascript:void(0)",
                onclick = paste0(
                  "$('.shiny-oper-tab-content').hide();",
                  "$('.shiny-oper-tab-content').trigger('hide');",
                  "$('.shiny-oper-tab-content').trigger('hidden');",
                  "$('.tab-link').removeClass('active');",
                  "$('#shiny-tab-", tabName, "').show();",
                  "$('#shiny-tab-", tabName, "').trigger('show');",
                  "$('#shiny-tab-", tabName, "').trigger('shown');",
                  "$('#shiny-tab-", tabName, "_tab_id", "').addClass('active');"
                ),
                icon,
                shiny::tags$span(
                  class="nav-label",
                  label
                )
              )
}


sidebarDropdown <- function() {

}
