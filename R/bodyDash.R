#' @title bodyDash
#' @name bodyDash
#'
#' @description O corpo do dashboard, onde serao adicionados os conteudos \code{\link{tabItem}}.
#'
#'
#' @param ... Onde sera passado o \code{\link{tabItem}}.
#'
#'
#' @export
bodyDash <- function(...) {

  shiny::tags$div(class = "col-lg-12 gray-bg",

      ...

  )

}
