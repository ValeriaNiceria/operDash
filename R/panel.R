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
#' @export

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
