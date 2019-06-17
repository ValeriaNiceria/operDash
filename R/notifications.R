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