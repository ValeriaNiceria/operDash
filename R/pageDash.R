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


  content = tags$div(id="wrapper",
                     tags$div(id="page-wrapper", class="gray-bg",
                              head,
                              navbar,
                              body,
                              footer,
                              footerScripts,

                              ...

                     )
  )

  shiny::bootstrapPage(content, title = title)

}
