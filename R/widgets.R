#' @title infoBox
#' @name infoBox
#'
#' @description Uma caixa de informação.
#'
#' @param width Largura da box, podendo ser utilizados os valores entre 1 e 12.
#' @param bg_color Cor de fundo do ícone, podendo ser utilizado os valores: aqua, green, yellow e red.
#' @param icon Ícone
#' @param text Texto
#' @param value Valor
#' @param progress Número da linha de progresso, podendo ser de 1 à 100.
#' @param progress_desc Descrição que será adicionado abaixo da linha de progresso.
#' @param bg_all Pode-se passar o valor TRUE ou FALSE, se deseja que a box inteira fique colorida.
#'
#' @export
infoBox <- function(width = 12, bg_color = "aqua", icon = NULL, text = NULL, value = NULL, progress = NULL, progress_desc = NULL, bg_all = FALSE) {
  width = paste0("col-sm-", width)
  bg_color = paste0("bg-", bg_color)
  progress = if (!is.null(progress)) paste0("width: ", progress, "%")
  progress_bar = NULL
  bg_all = if (isTRUE(bg_all)) bg_color
  bg_icon = if (isFALSE(bg_all)) bg_color
  bg_icon = if (is.null(bg_all)) bg_color

  if (!is.null(progress_desc)) {
    progress_desc = shiny::tags$span(
      class="progress-description",
      progress_desc
    )
  }

  if (!is.null(progress)) {
    progress_bar = shiny::tags$div(
      class="progress",
      shiny::tags$div(
        class="progress-bar",
        style=progress
      )
    )
  }

  shiny::tags$div(
    class=width,
    shiny::tags$div(
      class=paste("info-box", bg_all),
      shiny::tags$span(
        class=paste("info-box-icon", bg_icon),
        icon
      ),

      shiny::tags$div(
        class="info-box-content",
        shiny::tags$span(
          class="info-box-text",
          text
        ),
        shiny::tags$span(
          class="info-box-number",
          value
        ),

        progress_bar,
        progress_desc

      )
    )
  )

}



#' @title valueBox
#' @name valueBox
#'
#' @description Uma caixa de informação.
#'
#' @param width Largura da box, podendo ser utilizados os valores entre 1 e 12.
#' @param bg_color Cor de fundo do ícone, podendo ser utilizado os valores: aqua, green, yellow e red.
#' @param icon Ícone
#' @param text Texto
#' @param value Valor
#'
#' @export
valueBox <- function(width = 12, bg_color = "aqua", value = NULL, text = NULL, icon = NULL) {
  width = paste0("col-sm-", width)
  bg_color = paste0("bg-", bg_color)

  shiny::tags$div(
    class=width,
    shiny::tags$div(
      class=paste("small-box", bg_color),

      shiny::tags$div(
        class="inner",
        shiny::tags$h3(value),
        shiny::tags$p(text)
      ),

      shiny::tags$div(
        class="icon",
        icon
      )
    )
  )

}





