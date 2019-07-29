operPage <- function(..., title = "", sidebar = NULL, navbar = NULL) {

  if (!is.null(sidebar)) {

  } else {

  }


  shiny::tags$html(

    # Head -------------------------------
    shiny::tags$head(
      shiny::includeCSS(
        system.file("bootstrap-4.1.0/bootstrap.min.css",
                    package = "operDash")
      ),
      shiny::includeCSS(
        system.file("font-awesome-5.3.1/css/font-awesome.css",
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
      )
    ),

    # Body --------------------------------
    shiny::tags$body(class="pace-done mini-navbar",
                     # shiny::tags$div(id="wrapper",
                     #                 ...
                     #                 )


                     shiny::tags$div(id="page-wrapper", class="gray-bg",
                       shiny::tags$div(class="row border-bottom",
                         shiny::tags$nav(class="navbar navbar-static-top white-bg", role="navigation", style="margin-bottom: 0",
                           shiny::tags$div(class="navbar-header",
                             shiny::tags$a(class="navbar-minimalize minimalize-styl-2 btn btn-primary",href="#",
                                           shiny::tags$i(class="fa fa-bars")
                             )
                           )
                         )
                       ),
                       shiny::tags$div(class="wrapper wrapper-content",

                         ...

                       )
                     )
    ),

    # Footer script ===============================
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
