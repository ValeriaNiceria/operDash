#' @title Dashboard Page
#' @name operPage
#'
#'
#' @param title Um título que será utilizado no display do browser
#' @param sidebar Um menu lateral \code{sidebarDash}
#' @param navbar Um menu Top \code{navbarDash}
#' @param headScript Script que será adicionado no head da página
#' @param body O conteúdo da página \code{bodyDash}
#' @param footerScript Script que será adicionado no footer da página
#'
#'
#' @seealso \code{\link{sidebarDash}}, \code{\link{navbarDash}}, \code{\link{bodyDash}}.
#'
#'
#' @export


operPage <- function(title = "", sidebar = NULL, navbar = NULL, contentNavbarRight = NULL, body = NULL, headScript = NULL, footerScript = NULL) {

  if (!is.null(sidebar)) {
    sidebarPage(title, sidebar, contentNavbarRight, body, headScript, footerScript)
  } else {
    navbarPage(title, navbar, headScript, body, footerScript)
  }

}



sidebarPage <- function(title = NULL, sidebar = NULL, contentNavbarRight = NULL, content = NULL, headScript = NULL, footerScript = NULL) {

  shiny::tags$html(

    # Head -------------------------------
    shiny::tags$head(
      shiny::includeCSS(
        system.file("bootstrap-4.1.0/bootstrap.min.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("animate-3.5.0/animate.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("oper-0.1.0/css/customer.css",
                    package = "operDash")
      ),
      shiny::tags$meta(
        name="viewport",
        content="width=device-width, initial-scale=1.0"
      ),
      shiny::tags$title(title),

      headScript

    ),

    # Body --------------------------------

    shiny::tags$body(
      class="pace-done mini-navbar",
      shiny::tags$div(
        id="wrapper",

        sidebar,

        shiny::tags$div(
          id="page-wrapper",
          class="gray-bg",
          shiny::tags$div(
            class="row border-bottom",
            shiny::tags$nav(
              class="navbar navbar-static-top white-bg",
              role="navigation",
              style="margin-bottom: 0",
              shiny::tags$div(
                class="navbar-header",
                shiny::tags$a(
                  class="navbar-minimalize minimalize-styl-2 btn btn-primary",
                  href="#",
                  shiny::icon("bars")
                )
              ),
              shiny::tags$ul(
                class="nav navbar-top-links navbar-right",

                contentNavbarRight

              )
            )
          ),
          shiny::tags$div(
            class="wrapper wrapper-content gray-bg",

            content

          )
        )
      )
    ),

    # Footer script ---------------------------
    shiny::includeScript(
      system.file("oper-0.1.0/js/popper.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("bootstrap-4.1.0/bootstrap.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/metis_menu/jquery.metisMenu.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/slimscroll/jquery.slimscroll.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/operDash.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/pace/pace.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/end.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("js/shiny-oper-link.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("js/shiny-oper-brand.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("js/shiny-oper-tab-content.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("js/shiny-oper-user-options.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("js/shiny-oper-dropdown.js",
                  package = "operDash")
    ),

    footerScript
  )

}


navbarPage <- function(title = NULL, navbar = NULL, content = NULL, headScript = NULL, footerScript = NULL) {

  shiny::tags$html(

    # Head ---------------------------
    shiny::tags$head(
      shiny::includeCSS(
        system.file("bootstrap-4.1.0/bootstrap.min.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("animate-3.5.0/animate.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("oper-0.1.0/css/customer.css",
                    package = "operDash")
      ),
      shiny::includeScript(
        system.file("oper-0.1.0/js/init.js",
                    package = "operDash")
      ),
      shiny::tags$meta(
        name="viewport",
        content="width=device-width, initial-scale=1.0"
      ),
      shiny::tags$title(title),

      headScript

    ),

    # Body ---------------------------
    shiny::tags$div(
      id="wrapper",
      class="gray-bg",
      shiny::tags$div(
        id="page-wrapper",
        class="gray-bg",

        navbar,

        shiny::tags$div(
          class="wrapper wrapper-content",
          shiny::tags$body(style = "margin-top: 1%; ",

            content

          )
        )
      )
    ),

    # Footer script ---------------------------
    shiny::includeScript(
      system.file("oper-0.1.0/js/popper.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("bootstrap-4.1.0/bootstrap.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/metis_menu/jquery.metisMenu.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/slimscroll/jquery.slimscroll.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/operDash.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/pace/pace.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/end.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("js/shiny-oper-link.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("js/shiny-oper-logo-element.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("js/shiny-oper-tab-content.js",
                  package = "operDash")
    ),


    footerScript

  )

}
