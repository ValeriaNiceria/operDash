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
#'   \code{\link{bodyDash}}, \code{\link{footerDash}},
#'   \code{\link{footerScriptsDash}}.
#'
#' @examples
#' # Basic dashboard page template
#' library(shiny)
#'
#' shinyApp(
#'   ui = pageDash(
#'     title = "operDash example",
#'     head = headDash(),
#'     body = bodyDash(),
#'     footer = footerDash(),
#'     footerScripts = footerScriptsDash()
#'     title = "Dashboard example"
#'   ),
#'   server = function(input, output) { }
#' )
#' }
#'
#' @export



pageDash <- function(title = "Dashboard Shiny",
                     head = NULL,
                     navbar = NULL,
                     body = NULL,
                     footer = NULL,
                     footerScripts = NULL,
                     ...) {

  oper_js <- "oper-0.1.0/js/operDash.js"
  poper_js <- "oper-0.1.0/js/popper.min.js"
  metismenu_js <- "oper-0.1.0/js/metis_menu/jquery.metisMenu.js"
  slimscroll_js <- "oper-0.1.0/js/slimscroll/jquery.slimscroll.min.js"
  pace_js <- "oper-0.1.0/js/pace/pace.min.js"
  end_js <- "oper-0.1.0/js/end.js"

  content = tags$div(id="wrapper",
                     tags$div(id="page-wrapper", class="gray-bg",
                              navbar,
                              body,
                              footer
                     ),
                     shiny::includeScript(
                       system.file(poper_js,
                                   package = "operDash")
                     ),
                     shiny::includeScript(
                       system.file(metismenu_js,
                                   package = "operDash")
                     ),
                     shiny::includeScript(
                       system.file(slimscroll_js,
                                   package = "operDash")
                     ),
                     shiny::includeScript(
                       system.file(oper_js,
                                   package = "operDash")
                     ),
                     shiny::includeScript(
                       system.file(pace_js,
                                   package = "operDash")
                     ),
                     shiny::includeScript(
                       system.file(end_js,
                                   package = "operDash")
                     )
  )


  shiny::tags$html(
    # Head --------------------------------------------------------------------
    head,

    content

  )


  # content = tags$div(id="wrapper",
  #                    tags$div(id="page-wrapper", class="gray-bg",
  #                             head,
  #                             navbar,
  #                             body,
  #                             footer,
  #                             footerScripts,
  #
  #                             ...
  #
  #                    )
  # )
  #
  # shiny::bootstrapPage(content, title = title)

}
