#' @title Label
#' @name label
#'
#' @description descricao
#'
#' @param label O texto que será exibido.
#' @param status O status do label que pode ser success, danger, info ou warning.
#' @param float A posição do label que pode ser right ou left.
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

#' @title CollapseLink
#' @name collapseLink
#'
#' @description descricao
#'
#'
#' @export

collapseLink <- function() {
  shiny::tags$a(class="collapse-link float-right",
                shiny::tags$i(class="fa fa-chevron-up"))
}

#' @title CloseLink
#' @name closeLink
#'
#' @description descricao
#'
#' @export
closeLink <- function() {
  shiny::tags$a(class="close-link float-right",
                shiny::tags$i(class="fa fa-times"))
}

#' @title InfoLink
#' @name infoLink
#'
#' @description descricao
#'
#'
#' @param icon O ícone que será exibido.
#' @param message A mensagem que será exibida no balão de informação.
#' @param position A posição do balão de informação, podendo utilizar left ou right.
#' @param ... Itens adicionais.
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


#' @title BoxTools
#' @name boxTools
#'
#'
#' @description descricao
#'
#' @param ... Itens adicionais.
#'
#'
#' @export
boxTools <- function(...) {
  shiny::tags$div(class="ibox-tools",
           ...
           )
}

#' @title BoxContent
#' @name boxContent
#'
#'
#' @description descricao
#'
#' @param info info
#' @param title title
#' @param background background
#' @param colorText colorText
#' @param ... Itens adicionais.
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
#' @description descricao
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
#' @description descricao
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
