#' @title Sidebar
#' @name sidebarDash
#'
#'
#' @export

sidebarDash <- function(..., imgSrc = NULL, brand = NULL) {

  itens <- list(...)

  generateItensMenu <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      shiny::tags$li(
        class = if (i == 1) "oper-link active" else "oper-link",
        itens[[i]]
      )

    })
  }

  link_img = "https://raw.githubusercontent.com/ValeriaNiceria/operDash/master/inst/www/img/user.jpeg"
  imgSrc <- if (is.null(imgSrc)) link_img else imgSrc

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
        shiny::tags$li(
          class="nav-header",
          shiny::tags$div(
            class="dropdown profile-element avatar-menu",
            shiny::tags$img(
              alt="image",
              class="rounded-circle",
              src=imgSrc,
              width = "60px"
            )
          ),
          shiny::tags$div(
            class="logo-element",
            shiny::tags$img(
              alt="image",
              class="rounded-circle",
              src=imgSrc,
              width = "35px"
            )
          )
        ),

        generateItensMenu(itens)

      )
    )
  )

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
                `data-toggle`="tooltip",
                `data-placement`="right",
                `data-original-title`="Tooltip on right",
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
