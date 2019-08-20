#' @title Sidebar
#' @name sidebarDash
#'
#' @param ... Itens adicionais
#' @param brand utilizar texto ou imagem
#'
#' @export

sidebarDash <- function(..., brand = NULL) {

  itens <- list(...)

  generateItensMenu <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      # class = if (i == 1) "active nav-oper" else "nav-oper",

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


#' @title User Options group
#' @name userOptions
#'
#' @param ... Itens adicionais
#'
#' @export

userOptions <- function(...) {

  tagList(
    ...
  )

}


#' @title User item
#' @name itemUser
#'
#' @param text Texto que será exibido
#' @param icon icone
#' @param tabName
#'
#'
#' @export

itemUser <- function(text = NULL, icon = NULL, tabName = NULL) {
  shiny::tags$li(
    shiny::tags$a(
      class="dropdown-item dropdown-user-option",
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
      text
    )
  )
}

#' @title itemUserDivider
#' @name itemUserDivider
#'
#'
#' @export
itemUserDivider <- function() {
  shiny::tags$li(class="dropdown-divider")
}



#' @title Sidebar Item
#' @name sidebarItem
#'
#' @param text
#' @param icon
#' @param tabName
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
#' @param text
#' @param icon
#'
#' @export
#'
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
#' @param text
#' @param icon
#' @param tabName
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

