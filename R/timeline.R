timelineBlock <- function(...) {
  shiny::tags$div(id="vertical-timeline",
           class="vertical-container dark-timeline",
           ...
           )
}

timelineItem <- function(icon = NULL, statusIcon = "primary", title = NULL, content = NULL, time = NULL) {
  classIconStatus = paste0("vertical-timeline-icon bg-", statusIcon)
  shiny::tags$div(class="vertical-timeline-block",
                  shiny::tags$div(class=classIconStatus, icon ),
                  shiny::tags$div(class="vertical-timeline-content",
                                  shiny::tags$h2(title),

                    content,

                    shiny::tags$span(class="vertical-date", time)
                    )
           )
}
