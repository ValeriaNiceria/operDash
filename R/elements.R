#' @title Button
#' @name appButton
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
#'
#' @param id
#' @param icon
#' @param status
#' @param lg
#' @param ...
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
#' @param ...
#'
#' @export

jumbotron <- function(...) {
  shiny::tags$div(class="jumbotron",

           ...

           )
}

#' @title alert
#' @name alert
#'
#'
#' @param message
#' @param status
#' @param ...
#'
#'
#' @export

alert <- function(..., message = NULL, status = "success") {
  # type = success - info - warning - danger
  classAlert = paste0("alert alert-", status, " alert-dismissable")
  shiny::tags$div(class=classAlert,
                  shiny::tags$button(`aria-hidden`="true",
                       `data-dismiss`="alert",
                       class="close",
                       type="button", "×"),
           message,

           ...
  )
}


#' @title progressBar
#' @name progressBar
#'
#'
#' @param status
#' @param animated
#' @param min
#' @param value
#' @param max
#' @param max
#' @param ...
#'
#'
#' @export

progressBar <- function(status = "success", animated = FALSE, min = "0", value = "45", max = "100", ...) {
  classProgress = paste0("progress-bar ", if (animated) "progress-bar-striped progress-bar-animate", " progress-bar-", status)
  stypeProgress = paste0("width:", value, "%")
  shiny::tags$div(class="progress",
                  shiny::tags$div(class=classProgress,
                    style=stypeProgress,
                    role="progressbar",
                    `aria-valuenow`=value,
                    `aria-valuemin`=min,
                    `aria-valuemax`=max
                    ),
           ...

           )
}
