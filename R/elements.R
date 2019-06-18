appButton <- function(idButton = NULL, label = "label", icon = NULL, status = "primary", size_lg = TRUE, ...) {
  size <- ifelse(size_lg, "btn-lg", "")
  statusButton <- paste0("btn btn-w-m btn-", status)
  classButton <- paste(statusButton, size)
  
  tags$button(class=classButton,
              type="button",
              label,
              id = idButton,
              
              ...
              
              )
}


appCircleButton <- function(idButton = NULL, label = "label", icon = NULL, status = "primary", size_lg = FALSE, ...) {
  size <- ifelse(size_lg, "btn-lg", "")
  classButton <- paste0("btn btn-", status, " btn-circle ", size)
  tags$button(class=classButton, type="button",
              icon)
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
                       class="close m-r",
                       type="button", icon("times")),
           message,
           
           ...
  )
}



progressBar <- function(type = "success", animated = FALSE, min = "0", value = "45", max = "100") {
  classProgress = paste0("progress-bar ", if (animated) "progress-bar-striped progress-bar-animate", " progress-bar-", type)
  stypeProgress = paste0("width:", value, "%")
  tags$div(class="progress",
           tags$div(class=classProgress,
                    style=stypeProgress,
                    role="progressbar",
                    `aria-valuenow`=value,
                    `aria-valuemin`=min,
                    `aria-valuemax`=max
                    )
           )
}