appButton <- function(id = NULL, label = "label", icon = NULL, status = "default", ...) {
  statusButton <- paste0("btn btn-w-m btn-lg btn-", status)
  
  tags$button(class=statusButton,
              type="button",
              icon,
              label,
              id = id,
              
              ...
              
              )
}


appCircleButton <- function(id = NULL, icon = NULL, status = "default", lg = FALSE, ...) {
  size <- ifelse(lg, "btn-lg", "")
  classButton <- paste0("btn btn-", status, " btn-circle ", size)
  tags$button(class=classButton, type="button", id = id,
              icon, ...)
}


jumbotron <- function(...) {
  tags$div(class="jumbotron",
           
           ...
           
           )
}


alert <- function(..., message = NULL, status = "success") {
  # type = success - info - warning - danger
  classAlert = paste0("alert alert-", status, " alert-dismissable")
  tags$div(class=classAlert, 
           tags$button(`aria-hidden`="true",
                       `data-dismiss`="alert",
                       class="close m-r",
                       type="button", icon("times")),
           message,
           
           ...
  )
}



progressBar <- function(status = "success", animated = FALSE, min = "0", value = "45", max = "100", ...) {
  classProgress = paste0("progress-bar ", if (animated) "progress-bar-striped progress-bar-animate", " progress-bar-", status)
  stypeProgress = paste0("width:", value, "%")
  tags$div(class="progress",
           tags$div(class=classProgress,
                    style=stypeProgress,
                    role="progressbar",
                    `aria-valuenow`=value,
                    `aria-valuemin`=min,
                    `aria-valuemax`=max
                    ),
           ...
           
           )
}