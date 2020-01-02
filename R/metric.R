#' @title Metric
#' @name metric
#'
#' @description descrição
#'
#' @param title Título para o metric.
#' @param status Status do metric, podendo utilizar os valores up e down.
#' @param subtitle Subtítulo para o metric.
#'
#'
#' @export
metric <- function(title = NULL, status = "up", subtitle = NULL) {

  if (tolower(status) == "up") {
    status_metric = shiny::tags$h2(
      class="text-green status-metric",
      shiny::icon("play", class="fa-rotate-270"),
      "Up"
    )
  } else {
    status_metric = shiny::tags$h2(
      class="text-red status-metric",
      shiny::icon("play", class="fa-rotate-90"),
      "Down"
    )
  }

  shiny::tags$div(
    class="col-sm-3",
    shiny::tags$div(
      class="metric-content",
      shiny::tags$h5(
        class="m-b-md title-metric",
        title
      ),
      status_metric,
      shiny::tags$small(
        class="subtitle-metric",
        subtitle
      )
    )
  )

}



#' @title Metric progress
#' @name metricProgress
#'
#' @description descrição
#'
#' @param title Título para o metric.
#' @param status Status do progress, podendo utilizar os valores success e danger.
#' @param subtitle Subtítulo para o metric.
#' @param value Valor da barra de progresso, podendo utilizar os valores de 0 à 100.
#'
#'
#' @export
metricProgress <- function(title = NULL, value = 100, subtitle = NULL, status = "success") {

  if(tolower(status) == "success") {
    progress_class =  "progress-bar progress-bar-success"
  } else {
    progress_class =  "progress-bar progress-bar-danger"
  }


  shiny::tags$div(
    class="col-sm-3",
    shiny::tags$div(
      class="metric-content",
      shiny::tags$h5(
        class="m-b-md title-metric",
        title
      ),
      shiny::tags$h3(paste0(value, "%")),
      shiny::tags$div(
        class="progress progress-xs",
        shiny::tags$div(
          class=progress_class,
          role="progressbar",
          `aria-valuenow`="60",
          `aria-valuemin`="0",
          `aria-valuemax`="100",
          style=paste0("width:", value, "%")
        )
      ),
      shiny::tags$small(
        class="subtitle-metric",
        subtitle
      )
    )
  )

}




#' @title Metric box
#' @name metricBox
#'
#' @description descrição
#'
#' @param title Título para o metric.
#' @param subtitle Subtítulo para o metric.
#' @param value Valor principal do metric.
#' @param percent Valor que será exibido como porcentagem.
#' @param status Status do valor da porcentagem, podendo utilizar os valores success e danger.
#'
#' @export
metricBox <- function(title = NULL, value = NULL, percent = NULL, subtitle = NULL, status = "success") {

  if (tolower(status) == "success") {
    class_percent = "stat-percent text-green"
    icon_percent = shiny::icon("bolt")
  } else {
    class_percent = "stat-percent text-red"
    icon_percent = shiny::icon("level-down")
  }

  shiny::tags$div(
    class="col-sm-3",
    shiny::tags$div(
      class="metric-content",
      shiny::tags$h5(
        class="m-b-md title-metric",
        title
      ),
      shiny::tags$h1(
        value
      ),
      shiny::tags$div(
        class=class_percent,
        paste0(percent, "%"),
        icon_percent
      ),
      shiny::tags$small(
        class="subtitle-metric",
        subtitle
      )
    )
  )

}
