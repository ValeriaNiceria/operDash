#' @title Button
#' @name appButton
#'
#' @description descricao
#'
#'
#' @param id Identificador do botão
#' @param label Texto que será exibido no botão
#' @param icon icone
#' @param status status do botão
#'
#'
#'
#' @export

appButton <- function(id = NULL, label = "label", icon = NULL, status = "default", ...) {
  statusButton <- paste0("btn btn-w-m btn-lg btn-", status)

  shiny::tags$button(class=statusButton,
              type="button",
              icon,
              label,
              id = id,

              ...

              )
}

#' @title appCircleButton
#' @name appCircleButton
#'
#' @description descricao
#'
#'
#' @param id id
#' @param icon icon
#' @param status status
#' @param lg lg
#' @param ... itens
#'
#'
#' @export

appCircleButton <- function(id = NULL, icon = NULL, status = "default", lg = FALSE, ...) {
  size <- ifelse(lg, "btn-lg", "")
  classButton <- paste0("btn btn-", status, " btn-circle ", size)
  shiny::tags$button(class=classButton, type="button", id = id,
              icon, ...)
}


#' @title jumbotron
#' @name jumbotron
#'
#' @description descricao
#'
#' @param ... itens
#'
#' @export

jumbotron <- function(...) {
  shiny::tags$div(class="jumbotron",

           ...

           )
}

