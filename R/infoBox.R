#' @title InfoMetric
#' @name infoMetric
#'
#'
#' @param width
#' @param title
#' @param subTitle
#' @param percent
#' @param colorPercent
#' @param icon
#'
#'
#' @export

infoMetric <- function(width = 12, title = NULL, subTitle = NULL, value = NULL, percent = "0%", colorPercent = "text-navy", icon = NULL, ...) {
  # color percent - text-navy - text-danger
  classTextPercent = paste("stat-percent font-bold", colorPercent)
  width = paste0("col-lg-", width)

  shiny::tags$div(class=width,
                  shiny::tags$div(class="box",
                                  shiny::tags$div(class="ibox-content",
                                                  shiny::tags$h5(title),
                                                  shiny::tags$h1(class="no-margins", value),
                                                  shiny::tags$div(class=classTextPercent,
                                      percent, icon),
                                      shiny::tags$small(subTitle)
                    ),

                    ...

            )
 )
}


#' @title InfoProgress
#' @name infoProgress
#'
#'
#' @param width
#' @param title
#' @param subTitle
#' @param value
#' @param status
#'
#'
#' @export

infoProgress <- function(width = 12, title = NULL, subTitle = NULL, value = "33", status = NULL, ...) {
  styleProgress = paste0("width:", value, "%")
  classProgress = "progress-bar"
  classProgress = if (!is.null(status)) paste0(classProgress, " progress-bar-", status)
  width = paste0("col-lg-", width)
  shiny::tags$div(class=width,
                  shiny::tags$div(class="ibox",
                                  shiny::tags$div(class="ibox-content",
                                                  shiny::tags$h5(title),
                                                  shiny::tags$h2(paste0(value, "%")),
                                                  shiny::tags$div(class="progress progress-mini",
                                                                  shiny::tags$div(style=styleProgress, class=classProgress)
                             ),
                             shiny::tags$div(class="m-t-sm small", subTitle)

                    ),

                    ...
           )
  )
}


#' @title ValueBox
#' @name valueBox
#'
#'
#' @param width
#' @param icon
#' @param textTop
#' @param textSub
#' @param status
#' @param ...
#'
#'
#' @export

valueBox <- function(width = 12, icon = NULL, textTop = "textTop", textSub = "textSub", status = "default", ...) {
  icon = if (is.null(icon)) icon("cloud", class="fa-5x")

  width = paste0("col-lg-", width)

  switch(status,
         default={
           widgetClass = "widget style1"
         },
         primary={
           widgetClass = "widget style1 navy-bg"
         },
         info={
           widgetClass = "widget style1 lazur-bg"
         },
         warning={
           widgetClass = "widget style1 yellow-bg"
         },
         danger={
           widgetClass = "widget style1 red-bg"
         },
         {
           widgetClass = "widget style1"
         }
  )

  shiny::tags$div(class=width,
                  shiny::tags$div(class=widgetClass,
                                  shiny::tags$div(class="row",
                                                  shiny::tags$div(class="col-4", icon),
                                      shiny::tags$div(class="col-8 text-right",
                                                      shiny::tags$span(textTop),
                                                      shiny::tags$h2(class="font-bold", textSub))
                    ),

                    ...
           )
  )
}
