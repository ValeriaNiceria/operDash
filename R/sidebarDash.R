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

        itens[[i]]
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

sidebarItem <- function(label = NULL, icon = NULL, tabName = NULL) {

  icon <- if (is.null(icon)) icon("link") else icon

  shiny::tags$a(class="tab-link",
                id = paste0("#shiny-tab-", tabName, "_tab_id"),
                href = "javascript:void(0)",
                onclick = paste0(
                  "$('.tab-pane').hide();",
                  "$('.tab-pane').trigger('hide');",
                  "$('.tab-pane').trigger('hidden');",
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
