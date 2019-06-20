timelineBlock <- function(...) {
  tags$div(id="vertical-timeline", 
           class="vertical-container dark-timeline",
           ...
           )
}

timelineItem <- function(icon = NULL, statusIcon = "primary", title = NULL, content = NULL, time = NULL) {
  classIconStatus = paste0("vertical-timeline-icon bg-", statusIcon)
  tags$div(class="vertical-timeline-block",
           tags$div(class=classIconStatus, icon ),
           tags$div(class="vertical-timeline-content",
                    tags$h2(title),
                    
                    content,
                    
                    tags$span(class="vertical-date", time)
                    )
           )
}