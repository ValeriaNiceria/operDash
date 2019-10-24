#' @title Dashboard Body
#' @name operDashBody
#'
#' @description O corpo do dashboard, onde serao adicionados os conteudos \code{\link{tabItem}}.
#'
#' @param ... Onde será adicionado o \code{\link{tabItem}}.
#'
#'
#' @export
operDashBody <- function(...) {
  shiny::tags$div(
    class = "col-lg-12",
    ...
  )

}
