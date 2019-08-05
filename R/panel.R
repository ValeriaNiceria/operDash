#' @title Panel
#' @name panel
#'
#'
#' @param title
#' @param body
#' @param footer
#' @param status
#'
#'
#'
#' @export

panel <- function(title = NULL, body = NULL, footer = NULL, status = "default", ...) {
  # type = default - primary - success - info - warning - danger
  classPanel = paste0("panel panel-", status)
  title = if (!is.null(title))  shiny::tags$div(class="panel-heading", title)
  body = if (!is.null(body))  shiny::tags$div(class="panel-body", body)
  footer = if (!is.null(footer))  shiny::tags$div(class="panel-footer", footer)

  shiny::tags$div(class=classPanel,
          title,
          body,
          footer,
           ...
           )
}


#' @title AccordionItem
#' @name accordionItem
#'
#'
#' @param width
#' @param title
#' @param content
#'
#'
#'
#' @export

accordionItem <- function(width = 12, title = NULL, content = NULL, ...) {
  width = paste0("col-lg-", width)
  shiny::tags$div(class=width,
                  shiny::tags$button(class="accordion font-bold", title),
                  shiny::tags$div(class="panel-accordion", content),
           ...
  )

}
