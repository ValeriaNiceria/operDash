#' @title TimelineBlock
#' @name timelineBlock
#'
#' @description descricao
#'
#' @param ... Itens adicionais.
#'
#'
#' @export

timelineBlock <- function(...) {
  shiny::tags$div(id="vertical-timeline",
           class="vertical-container dark-timeline",
           ...
           )
}


#' @title TimelineBlock
#' @name timelineBlock
#'
#' @description descricao
#'
#' @param icon icon
#' @param statusIcon statusIcon
#' @param title title
#' @param content content
#' @param time time
#'
#'
#' @export

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
