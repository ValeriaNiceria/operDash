label <- function(label = "label", status = "success", float = "right", ...) {
  labelType = paste0("label-", status)
  labelFloat = paste0("float-", float)
  classValue = paste("label", labelType, labelFloat)
  
  tags$span(class=classValue, label, ...)
}

collapseLink <- function() {
  tags$a(class="collapse-link float-right",
         tags$i(class="fa fa-chevron-up"))
}

closeLink <- function() {
  tags$a(class="close-link float-right",
         tags$i(class="fa fa-times"))
}


infoLink <- function(icon = NULL, message = NULL, ...) {
  icon = if (is.null(icon)) icon("info")
     tags$a(class="wm-tooltip float-right",
            `data-tooltip`=message,
            icon
      )
}


boxTools <- function(...) {
  tags$div(class="ibox-tools",
           ...
           )
}


boxTitle <- function(..., title = "iboxTitle", color = NULL) {
  colorTitle = if(!is.null(color)) paste0("color: white; background-color:", color)
  tags$div(class = "ibox-title", style=colorTitle,
           tags$h5(title),
           ...
           )
}


boxContent <- function(...) {
  tags$div(class = "ibox-content",
           ...
           )
}


box <- function(...) {
  tags$div(class = "ibox",
           ...
           )
}