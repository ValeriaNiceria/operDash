appButton <- function(idButton = NULL, label = "label", icon = NULL, type = "primary", size = "lg", ...) {
  
  typeButton <- paste0("btn btn-w-m btn-", type)
  sizeButton <- paste0("btn-", size)
  classButton <- paste(typeButton, sizeButton)
  
  tags$button(class=classButton,
              type="button",
              label,
              id = idButton,
              
              ...
              
              )
}


jumbotron <- function(...) {
  tags$div(class="jumbotron",
           
           ...
           
           )
}


alert <- function(..., message = NULL, type = "success") {
  # type = success - info - warning - danger
  classAlert = paste0("alert alert-", type, " alert-dismissable")
  tags$div(class=classAlert, 
           tags$button(`aria-hidden`="true",
                       `data-dismiss`="alert",
                       class="close",
                       type="button", icon("times")),
           message,
           
           ...
  )
}