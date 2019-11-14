#' @title Dashboard box
#' @name box
#'
#' @description Uma caixa de informações, onde poderá ser adicionado um título e um conteúdo. Assim, organizando as
#' informações no dashboard.
#'
#' @param ... Conteúdo da box.
#' @param width Largura da box, podendo passar os valores de 1 à 12.
#' @param icon_box Ícone que será adicionado no título da box.
#' @param title Título da box.
#' @param color Cor da borda superior da box, podendo utilizar os valores: primary, success, warning, danger.
#' @param message Uma mensagem, que será exibida ao se passar o mouse em cima do ícone.
#' @param minimize Podendo ser passado o valor TRUE e assim será adicionado um botão na box, para minimizar a mesma.
#' @param close Podendo ser passado o valor TRUE e assim será adicionado um botão na box, para fechar a mesma.
#' @param footer Texto que será exibido na parte inferior da box.
#'
#'
#' @export
box <- function(..., width = 12, color = "default", icon_box = NULL, title = NULL, message = NULL, minimize = FALSE, close = FALSE, footer = NULL) {
  width = paste0("col-sm-", width)
  content_box = list(...)
  color_box = paste0("box-", color)
  minimize_content = NULL
  message_content = NULL
  close_content = NULL
  tools = NULL

  if (!is.null(message)) {
    message_content = shiny::tags$button(
      type = "button",
      class = "btn btn-box-tool",
      `data-toggle` = "tooltip",
      `data-widget` = "chat-pane-toggle",
      `data-original-title` = message,
      shiny::icon("comments")
    )
  }

  if (isTRUE(minimize)) {
    minimize_content = shiny::tags$button(
      type = "button",
      class = "btn btn-box-tool",
      `data-widget` = "collapse",
      shiny::icon("minus")
    )
  }

  if (isTRUE(close)) {
    close_content = shiny::tags$button(
      type = "button",
      class = "btn btn-box-tool",
      `data-widget` = "remove",
      shiny::icon("times")
    )
  }


  if (!is.null(message) | isTRUE(minimize) | isTRUE(close)) {
    tools = shiny::tags$div(
      class="box-tools pull-right",
      message_content,
      minimize_content,
      close_content
    )
  }


  shiny::tags$div(
    class=width,
    shiny::tags$div(
      class=paste("box", color_box),
      # Header - Box
      shiny::tags$div(
        class="box-header with-border",
        icon_box,
        shiny::tags$h3(
          class="box-title",
          title
        ),
        tools
      ),
      # Body - Box
      shiny::tags$div(
        class="box-body",
        content_box
      ),
      # Footer - Box
      shiny::tags$div(
        class="box-footer",
        footer
      )
    )
  )
}
