#' @title Dashboard Page
#' @name operDashPage
#'
#' @description A função operDashPage é a função principal do pacote,
#' ela engloba todos os elementos que serão adicionados na página.
#'
#' @param title Um título que será utilizado no display do browser
#' @param header Barra superior da página \code{operDashHeader}
#' @param sidebar Menu lateral \code{operDashSidebar}
#' @param body O conteúdo da página \code{operDashBody}
#' @param footer Barra inferior da página \code{operDashFooter}
#'
#'
#' @seealso \code{\link{operDashHeader}}, \code{\link{operDashSidebar}},
#' \code{\link{operDashBody}}, \code{\link{operDashFooter}}.
#'
#'
#' @export
operDashPage <- function(title = NULL,
                         header = NULL,
                         sidebar = NULL,
                         navbar = NULL,
                         body = NULL,
                         footer = NULL) {

  # Verificando os atributos e assim definindo o tipo de dashboard que será criado.
  if (!is.null(navbar)) {
    createPageWithNavbar(title = title,
                         navbar = navbar,
                         body = body,
                         footer = footer)
  } else {
    createPageWithSidebar(title = title,
                          header = header,
                          sidebar = sidebar,
                          body = body,
                          footer = footer)
  }

}



createPageWithSidebar <- function(title, header, sidebar, body, footer) {

  shiny::tags$html(

    # Head -------------------------------
    shiny::tags$head(
      shiny::tags$meta(
        charset="utf-8"
      ),
      shiny::tags$meta(
        `http-equiv`="X-UA-Compatible",
        content="IE=edge"
      ),
      shiny::tags$meta(
        name="viewport",
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
      ),
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
      shiny::tags$title(title)
    ),

    # Body --------------------------------

    shiny::tags$body(
      class="hold-transition skin-blue sidebar-mini sidebar-collapse",
      shiny::tags$div(
        class="wrapper",

        # Header -----------------------------------
        header,

        # Sidebar ----------------------------------
        sidebar,

        # Conteúdo - Body ---------------------------------
        shiny::tags$div(
          class="content-wrapper",
          body
        ),

        footer

      )
    ),

    # Footer script ---------------------------
    htmltools::htmlDependency("jquery", "3.4.1",
                              src = c(href = "https://code.jquery.com/"),
                              script = "jquery-3.4.1.min.js"),
    htmltools::htmlDependency("jquery-ui", "1.12.1",
                              src = c(href = "https://code.jquery.com/ui/1.12.1/"),
                              script = "jquery-ui.min.js"),

    # shiny::includeScript(
    #   system.file("jquery-3.4.1/dist/jquery.min.js",
    #               package = "operDash")
    # ),
    # shiny::includeScript(
    #   system.file("jquery-ui-1.12.1/jquery-ui.min.js",
    #               package = "operDash")
    # ),
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

    shiny::includeScript(
      system.file("oper-0.1.0/js/shiny-oper-link.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/shiny-oper-tab-content.js",
                  package = "operDash")
    )
  )

}


createPageWithNavbar <- function(title, navbar, body, footer) {

  shiny::tags$html(

    # Head ----------------------
    shiny::tags$head(
      shiny::tags$meta(
        charset="utf-8"
      ),
      shiny::tags$meta(
        `http-equiv`="X-UA-Compatible",
        content="IE=edge"
      ),
      shiny::tags$meta(
        name="viewport",
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
      ),
      shiny::includeCSS(
        system.file("bootstrap-3.4.1/css/bootstrap.min.css",
                    package = "operDash")
      )
    )

    # Body ----------------------
  )

}
