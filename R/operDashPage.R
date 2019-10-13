#' @title Dashboard Page
#' @name operDashPage
#'
#' @description descricao
#'
#'
#' @param title Um título que será utilizado no display do browser
#' @param sidebar Um menu lateral \code{sidebar}
#' @param headScript Script que será adicionado no head da página
#' @param body O conteúdo da página \code{body}
#' @param footer Script que será adicionado no footer da página
#'
#'
#' @seealso \code{\link{sidebar}}, \code{\link{body}}.
#'
#'
#' @export


operDashPage <- function(title = NULL, header = NULL, sidebar = NULL, body = NULL, footer = NULL) {

  shiny::tags$html(

    # Head -------------------------------
    shiny::tags$head(
      shiny::includeCSS(
        system.file("bootstrap-3.4.1/css/bootstrap.min.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("ionicons-2.0.0/css/ionicons.min.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("oper-0.1.0/css/AdminLTE.min.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("oper-0.1.0/css/skins/_all-skins.min.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("morris.js-0.5.0/morris.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("jvectormap-1.2.2/jquery-jvectormap.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("bootstrap-datepicker-1.9.0/css/bootstrap-datepicker.min.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("bootstrap-daterangepicker-2.1.27/daterangepicker.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css",
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
      shiny::tags$title(title)

    ),

    # Body --------------------------------

    shiny::tags$body(
      class="skin-blue sidebar-mini sidebar-collapse",
      shiny::tags$div(
        class="wrapper",

        # Header -----------------------------------
        shiny::tags$header(
          class="main-header",
          # Logo
          shiny::tags$a(href="#", class="logo",
                tags$span(class="logo-mini", tags$strong("A"), "LT"),
                tags$span(class="logo-lg", tags$strong("A"), "LT")
                ),

          # Header Navbar
          shiny::tags$nav(class="navbar navbar-static-top",
                   # Sidebar toggle button
                   shiny::tags$a(
                     href="#",
                     class="sidebar-toggle",
                     `data-toggle`="push-menu",
                     role="button",
                     shiny::icon("bars")
                    )

                   )

        )

      )
    ),

    # Footer script ---------------------------
    shiny::includeScript(
      system.file("jquery-3.4.1/dist/jquery.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("jquery-ui-1.12.1/jquery-ui.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("bootstrap-3.4.1/js/bootstrap.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("raphael-2.3.0/raphael.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("morris.js-0.5.0/morris.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("jquery-sparkline-2.1.3/jquery.sparkline.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("jvectormap-1.2.2/jquery-jvectormap-1.2.2.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("jvectormap-1.2.2/jquery-jvectormap-world-mill-en.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("jquery-knob/jquery.knob.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("moment/min/moment.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("bootstrap-daterangepicker-2.1.27/daterangepicker.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("bootstrap-datepicker-1.9.0/js/bootstrap-datepicker.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("jquery-slimscroll-1.3.8/jquery.slimscroll.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/adminlte.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/dashboard.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/demo.js",
                  package = "operDash")
    ),

    footer
  )

}
