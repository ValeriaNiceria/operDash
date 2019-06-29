#' @title Dashboard label
#' @name label
#'
#'
#' @param label A label.
#' @param status A status.
#' @param float A float.
#'
#'
#'
#' @export


label <- function(label = "label", status = "success", float = "right", ...) {
  labelType = paste0("label-", status)
  labelFloat = paste0("float-", float)
  classValue = paste("label", labelType, labelFloat)

  shiny::tags$span(class=classValue, label, ...)
}

#' @title Dashboard collapseLink
#' @name collapseLink
#'
#'
#' @export

collapseLink <- function() {
  shiny::tags$a(class="collapse-link float-right",
                shiny::tags$i(class="fa fa-chevron-up"))
}

#' @title Dashboard closeLink
#' @name closeLink
#'
#'
#' @export
closeLink <- function() {
  shiny::tags$a(class="close-link float-right",
                shiny::tags$i(class="fa fa-times"))
}

#' @title Dashboard infoLink
#' @name infoLink
#'
#'
#' @param icon A icon
#' @param message A message
#' @param position A position
#' @param ... Items to put in the dashboard page.
#'
#'
#' @export
infoLink <- function(icon = NULL, message = NULL, position = "right", ...) {
  icon = if (is.null(icon)) icon("info")
  classTooltip = paste0("tooltip--", position)
  shiny::tags$a(class=classTooltip,
          `data-tooltip`= message,
          icon,
          ...
    )
}


#' @title Dashboard boxTools
#' @name boxTools
#'
#'
#' @param ... Items to put in the dashboard page.
#'
#'
#' @export
boxTools <- function(...) {
  shiny::tags$div(class="ibox-tools",
           ...
           )
}

#' @title Dashboard boxContent
#' @name boxContent
#'
#'
#' @param ... Items to put in the dashboard.
#'
#'
#' @export boxTitle
boxTitle <- function(..., info = NULL, title = "iboxTitle", background = NULL, colorText = NULL) {
  background = if(!is.null(background)) paste0("background-color:", background, ";")
  colorText = if(!is.null(colorText)) paste0("color:", colorText, ";")
  colorBox = paste0(background, colorText)
  shiny::tags$div(class = "ibox-title", style=colorBox,
           if (!is.null(info)) shiny::tags$span(style="margin-right: 6px;", info),
           shiny::tags$h5(title),
           ...
           )
}


#' @title Dashboard boxContent
#' @name boxContent
#'
#'
#' @param ... Items to put in the dashboard.
#'
#'
#' @export
boxContent <- function(...) {
  shiny::tags$div(class = "ibox-content",
           ...
           )
}


#' @title Dashboard box
#' @name box
#'
#'
#' @param ... Items to put in the dashboard.
#'
#'
#' @export
box <- function(...) {
  shiny::tags$div(class = "ibox",
           ...
           )
}
