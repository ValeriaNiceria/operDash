#' @title infoBox
#' @name infoBox
#'
#' @description descrição
#'
#' @param width Largura da box, podendo ser utilizados os valores entre 1 e 12.
#' @param bg Cor de fundo do ícone, podendo ser utilizado os valores: aqua, green, yellow e red.
#' @param icon Ícone
#' @param text Texto
#' @param value Valor
#'
#'
#' @export
infoBox <- function(width = 12, bg = "aqua", icon = NULL, text = NULL, value = NULL) {
  width = paste0("col-sm-", width)
  bg_color = paste0("bg-", bg)

  shiny::tags$div(
    class=width,
    shiny::tags$div(
      class="info-box",
      shiny::tags$span(
        class=paste("info-box-icon", bg_color),
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
        )
      )
    )
  )

}
