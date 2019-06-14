label <- function(title = "title", type = "success", position = "right") {
  labelType = paste0("label-", type)
  labelPosition = paste0("float-", position)
  classValue = paste("label", labelType, labelPosition)
  
  tags$span(class=classValue, title)
}

collapseLink <- function() {
  tags$a(class="collapse-link",
         tags$i(class="fa fa-chevron-up"))
}

closeLink <- function() {
  tags$a(class="close-link",
         tags$i(class="fa fa-times"))
}


boxTools <- function(...) {
  tags$div(class="ibox-tools",
           list(...))
}


boxTitle <- function(..., iboxTitle = "iboxTitle") {
  tags$div(class = "ibox-title",
           tags$h5(iboxTitle),
           list(...))
}


boxContent <- function(...) {
  tags$div(class = "ibox-content",
           list(...))
}


box <- function(...) {
  tags$div(class = "ibox",
           list(...))
}