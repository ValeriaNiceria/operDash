#' @title Dashboard notification item
#' @name notificationItem
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
  tags$li(
    tags$div(class="dropdown-messages-box",
             tags$div(class="dropdown-item float-left",
                      icon),
             tags$div(class="media-body",
                      tags$small(class="float-right", icon("clock"), time),
                      tags$h3(title),
                      tags$p(class="text-muted", message)
                      )
             ),
    tags$li(class="dropdown-divider")

  )
}


#' @title Dashboard notification
#' @name notification
#'
#'
#' @param icon A icon.
#' @param label A label
#' @param status A message.
#' @param ... Items to put in the notification item.
#'
#'
#'
#' @seealso \code{\link{notificationItem}}.
#'
#' @examples
#' # Basic dashboard page template
#' notification(icon = icon("envelope"), label = "1",
#'notificationItem(
#'  icon = icon("user", class="fa-3x"),
#'  title = "novo usuário",
#'  message = "Foi um criado novo usuário",
#'  time = "14:41"),
#'notificationItem(
#'  icon = icon("user", class="fa-3x"),
#'  title = "novo usuário",
#'  message = "Foi um criado novo usuário",
#'  time = "14:41")
#')
#'
#' @export

notification <- function(..., icon = NULL, label = NULL, status = "warning") {
  labelClass <- paste0("label label-", status)
  tags$li(class="dropdown",
          tags$a(class="dropdown-toggle count-info",
                 `data-toggle`="dropdown",
                 href="#",
                 `aria-expanded`="false",
                 icon,
                 tags$span(class=labelClass, label)
                 ),

          tags$ul(class="dropdown-menu dropdown-alerts",
                  ...
                  )

          )
}
