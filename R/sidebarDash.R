#' @title Sidebar
#' @name sidebarDash
#'
#' @description descricao
#'
#'
#' @param ... Itens adicionais
#' @param brand utilizar texto ou imagem
#'
#' @export
sidebarDash <- function(..., brand = NULL) {

  itens <- list(...)

  generateItensMenu <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      shiny::tags$li(
        itens[[i]]
      )

    })
  }


  shiny::tags$nav(
    class="navbar-default navbar-static-side",
    role="navigation",
    shiny::tags$div(
      class="sidebar-collapse",

      shiny::tags$div(
        class="oper-brand",

        brand

      ),

      shiny::tags$ul(
        class="nav metismenu",
        id="side-menu",

        generateItensMenu(itens)

      )
    )
  )
}



#' @title Sidebar Item
#' @name sidebarItem
#'
#' @description descricao
#'
#' @param text text
#' @param icon icon
#' @param tabName tabName
#'
#'
#' @export
sidebarItem <- function(text = NULL, icon = NULL, tabName = NULL, ...) {

  shiny::tags$a(class="tab-link",
                id = paste0("#shiny-tab-", tabName, "_tab_id"),
                href = "javascript:void(0)",
                onclick = paste0(
                  "$('.shiny-oper-tab-content').hide();",
                  "$('.shiny-oper-tab-content').trigger('hide');",
                  "$('.shiny-oper-tab-content').trigger('hidden');",
                  "$('#shiny-tab-", tabName, "').show();",
                  "$('#shiny-tab-", tabName, "').trigger('show');",
                  "$('#shiny-tab-", tabName, "').trigger('shown');"
                ),
                if (is.null(icon)) icon("link") else icon,
                shiny::tags$span(
                  class="nav-label",
                  text
                )
  )

}


#' @title sidebar dropdown group
#' @name sidebarDropdown
#'
#' @description descricao
#'
#' @param text text
#' @param icon icon
#'
#' @export
sidebarDropdown <- function(text = NULL, icon = NULL, ...) {

  subItem <- list(...)

  tagList(
    shiny::tags$a(class="tab-link",
                  icon,
                  shiny::tags$span(
                    class="nav-label",
                    text
                  ),
                  shiny::tags$span(class="fa arrow")
    ),

    shiny::tags$ul(class="nav nav-second-level", subItem)
  )
}


#' @title Sidebar item dropdown
#' @name sidebarDropdownItem
#'
#' @description descricao
#'
#' @param text text
#' @param icon icon
#' @param tabName tabName
#'
#' @export
sidebarDropdownItem <- function(text = NULL, icon = NULL, tabName = NULL) {
  shiny::tags$li(
    shiny::tags$a(
      id = paste0("#shiny-tab-", tabName, "_tab_id"),
      href = "javascript:void(0)",
      onclick = paste0(
        "$('.shiny-oper-tab-content').hide();",
        "$('.shiny-oper-tab-content').trigger('hide');",
        "$('.shiny-oper-tab-content').trigger('hidden');",
        "$('#shiny-tab-", tabName, "').show();",
        "$('#shiny-tab-", tabName, "').trigger('show');",
        "$('#shiny-tab-", tabName, "').trigger('shown');"
      ),
      icon,
      text
    )
  )
}

