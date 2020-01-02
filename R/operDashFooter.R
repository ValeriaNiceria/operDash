#' @title Dashboard Footer
#' @name operDashFooter
#'
#' @description O rodapé do dashboard.
#'
#' @param text_left Texto que ficará localizado do lado esquerdo da página.
#' @param text_right Texto que ficará localizado do lado direito da página.
#'
#'
#' @export

operDashFooter <- function(text_left = NULL, text_right = NULL) {

  shiny::tags$footer(
    class = "main-footer",
    shiny::tags$div(
      class="row",
      shiny::tags$div(
        class="col-sm-6",
        shiny::tags$div(
          class="float-left mt-f",
          text_left
        )
      ),
      shiny::tags$div(
        class="col-sm-6",
        shiny::tags$div(
          class="float-right mt-f",
          text_right
        )
      )
    )
  )

}
