#' @title Panel
#' @name panel
#'
#' @description descricao
#'
#'
#' @param title Um título para o paínel.
#' @param body Um conteúdo para o corpo do paínel.
#' @param footer Um conteúdo para o rodapé do paínel.
#' @param status Um status para o paínel, sendo usado como padrão o valor default,
#' podendo ser utilizado os valores \strong{default}, \strong{primary}, \strong{success}, \strong{info}, \strong{warning} e \strong{danger}.
#' @param width O tamanho do paínel, usando o grid do Bootstrap.
#' Tendo como padrão o valor 12, podendo ser utilizado os valores de 1 à 12.
#'
#'
#' @examples
#' if(interactive()){
#'  library(shiny)
#'  library(operDash)
#'
#'  shiny::shinyApp(
#'    ui = operPage(
#'     title = "operDash",
#'     navbar = NULL,
#'     sidebar = NULL,
#'     footer = NULL,
#'     body = bodyDash(
#'         panel(
#'              title = "Título exemplo",
#'              body = "Conteúdo do corpo do paínel",
#'              footer = "Conteúdo do rodapé do paínel",
#'              status = "info",
#'              width = 4
#'        )
#'     )
#'    ),
#'    server = function(input, output) {
#'   }
#'  )
#' }
#'
#' @author Valéria Nicéria, \email{valerianiceria@@gmail.com}
#'


panel <- function(title = NULL, body = NULL, footer = NULL, status = "default", width = 12) {
  # type = default - primary - success - info - warning - danger
  width = paste0("col-lg-", width)
  classPanel = paste0("panel panel-", status)
  title = if (!is.null(title))  shiny::tags$div(class="panel-heading", title)
  body = if (!is.null(body))  shiny::tags$div(class="panel-body", body)
  footer = if (!is.null(footer))  shiny::tags$div(class="panel-footer", footer)

  shiny::tags$div(
    class = width,
    shiny::tags$div(
      class=classPanel,
      title,
      body,
      footer
    )
  )

}


#' @title AccordionItem
#' @name accordionItem
#'
#' @description descricao
#'
#'
#' @param width O tamanho do accordionItem, usando o grid do Bootstrap.
#' Tendo como padrão o valor 12, podendo ser utilizado os valores de 1 à 12.
#' @param title Um título para o accordionItem.
#' @param content O conteúdo para o accordionItem.
#'
#'
#'
#' @export

accordionItem <- function(width = 12, title = NULL, content = NULL, ...) {
  width = paste0("col-lg-", width)
  shiny::tags$div(class=width,
                  shiny::tags$button(class="accordion font-bold", title),
                  shiny::tags$div(class="panel-accordion", content)
  )

}
