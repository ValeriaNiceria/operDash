#' @title Dashboard Footer
#' @name footerDash
#'
#' @description descricao
#'
#'
#' @param textLeft Um texto que será adicionado do lado esquerdo da barra
#' @param textRight Um texto que será adicionado do lado direito da barra
#'
#'
#'
#' @export


footerDash <- function(textLeft = "textLeft", textRight = "textRight") {
  shiny::tags$div(class="footer",
                  shiny::tags$div(class="float-right", textRight),
                  shiny::tags$div(textLeft)
           )
}
