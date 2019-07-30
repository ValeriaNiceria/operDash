#' @title Dashboard Page
#' @name pageDash
#'
#'
#' @param title A title to display in the browser's title bar.
#' @param head A head created by \code{headDash}.
#' @param navbar A navbar created by \code{navbarDash}.
#' @param body A body created by \code{bodyDash}.
#' @param footer A footer created by \code{footerDash}.
#' @param footerScripts A footerScripts created by \code{footerScriptsDash}.
#' @param ... Items to put in the dashboard page.
#'
#'
#'
#' @seealso \code{\link{headDash}}, \code{\link{navbarDash}},
#'   \code{\link{bodyDash}}, \code{\link{footerDash}}, \code{\link{footerScriptsDash}}.
#'
#'
#' @export



pageDash <- function(title = "Dashboard Shiny",
                     head = NULL,
                     navbar = NULL,
                     body = NULL,
                     footer = NULL,
                     footerScripts = NULL,
                     ...) {


  content = shiny::tags$div(id="wrapper",
                            shiny::tags$div(id="page-wrapper", class="gray-bg",
                                head,
                                navbar,
                                shiny::tags$div(
                                  class="wrapper wrapper-content",
                                  body),
                                footer,
                                footerScripts,

                                ...

                     )
  )

  shiny::bootstrapPage(content, title = title)

}



#' @title Dashboard Page
#' @name pageSidebarDash
#'
#'
#' @export

pageSidebarDash <- function(..., title = NULL, sidebar = NULL, body = NULL) {
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
      shiny::tags$title(title)
    ),

    # Body --------------------------------

    shiny::tags$body(
      class="pace-done mini-navbar",
      shiny::tags$div(
        id="wrapper",
        shiny::tags$nav(
          class="navbar-default navbar-static-side",
          role="navigation",
          shiny::tags$div(
            class="sidebar-collapse",
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
                    src="https://raw.githubusercontent.com/ValeriaNiceria/operDash/master/inst/www/img/user.jpeg",
                    width = "60px"
                  )
                ),
                shiny::tags$div(
                  class="logo-element",
                  "oper"
                )
              ),

              sidebar

            )
          )
        ),


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
              )
            )
          ),
          shiny::tags$div(
            class="wrapper wrapper-content",

            body

          )
        )
      )
    ),

    # Footer script ---------------------------
    shiny::includeScript(
      system.file("jquery-3.1.1/jquery.min.js",
                  package = "operDash")
    ),
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
      system.file("jquery-ui-1.12.1/jquery-ui.min.js",
                  package = "operDash")
    ),
    shiny::includeScript(
      system.file("oper-0.1.0/js/end.js",
                  package = "operDash")
    )
  )

}
