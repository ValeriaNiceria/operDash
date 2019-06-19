timeline <- function(...) {
  tags$div(id="vertical-timeline", 
           class="vertical-container light-timeline",
           ...
           )
}

timelineItem <- function(icon = NULL) {
  tags$div(class="vertical-timeline-block",
           tags$div(class="vertical-timeline-icon navy-bg",
                    icon),
           tags$div()
           )
}