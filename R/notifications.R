#' @title Dashboard notification item
#' @name notificationItem
#'
#' @description descricao
#'
#'
#' @param icon A icon.
#' @param title A title.
#' @param message A message.
#' @param time A time.
#' @param ... Items to put in the notification item.
#'
#'
#' @export

notificationItem <- function(icon = NULL, title = NULL, message = NULL, time = NULL, ...) {
  shiny::tags$li(
    shiny::tags$div(class="dropdown-messages-box",
                    shiny::tags$div(class="dropdown-item float-left",
                      icon),
                    shiny::tags$div(class="media-body",
                                    shiny::tags$small(class="float-right", icon("clock"), time),
                                    shiny::tags$h3(title),
                                    shiny::tags$p(class="text-muted", message)
                      )
             ),
    shiny::tags$li(class="dropdown-divider")

  )
}


#' @title Dashboard notification
#' @name notification
#'
#' @description descricao
#'
#'
#' @param icon A icon.
#' @param label A label
#' @param status A message.
#' @param ... Items to put in the notification item.
#'
#' @seealso \code{\link{notificationItem}}.

#'
#' @export

notification <- function(..., icon = NULL, label = NULL, status = "warning") {
  labelClass <- paste0("label label-", status)
  shiny::tags$li(class="dropdown",
                 shiny::tags$a(class="dropdown-toggle count-info",
                 `data-toggle`="dropdown",
                 href="#",
                 `aria-expanded`="false",
                 icon,
                 shiny::tags$span(class=labelClass, label)
                 ),

                 shiny::tags$ul(class="dropdown-menu dropdown-alerts",
                  ...
                  )

          )
}
