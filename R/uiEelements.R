#' @title Carousel
#' @name carousel
#'
#' @description descrição
#'
#' @param ... Itens que serão adicionados no carousel
#'
#'
#' @export

carousel <- function(...) {
  id_carousel = "carousel-example-generic"

  itens <- list(...)

  generateItens <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      shiny::tags$li(
        `data-target` = paste0("#",id_carousel),
        `data-slide-to` = i - 1,
        class = if (i == 1) "active" else NULL
      )
    })
  }


  generateSlide <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      shiny::tags$div(
        class = if (i == 1) "item active" else "item",
        itens[[i]]
      )
    })
  }

  shiny::tags$div(
    id=id_carousel,
    class="carousel slide",
    `data-ride`="carousel",

    shiny::tags$ol(
      class="carousel-indicators",
      generateItens(itens)
    ),

    shiny::tags$div(
      class="carousel-inner",
      generateSlide(itens)
    ),

    shiny::tags$a(
      class="left carousel-control",
      href=paste0("#",id_carousel),
      `data-slide`="prev",
      shiny::tags$span(
        class="fa fa-angle-left"
      )
    ),
    shiny::tags$a(
      class="right carousel-control",
      href=paste0("#",id_carousel),
      `data-slide`="next",
      shiny::tags$span(
        class="fa fa-angle-right"
      )
    )

  )
}


#' @title Carousel Item
#' @name carouselItem
#'
#' @description descrição
#'
#' @param title Título que será adicionado em cada slide.
#' @param src Caminho da imagem.
#'
#'
#' @export

carouselItem <- function(title = NULL, src = NULL) {
  shiny::tagList(
    shiny::tags$img(
      src=src
    ),
    shiny::tags$div(
      class="carousel-caption",
      title
    )
  )
}


#' @title Alert
#' @name alert
#'
#' @description Uma mensagem de alerta.
#'
#' @param width Largura do alerta.
#' @param status O status do alerta, podendo utilizar os valores: danger, info, warning, success.
#' @param icon Ícone que será utilizado no título do alerta.
#' @param title Título do alerta.
#' @param message Mensagem do alerta.
#' @param close Um botão para fechar o alerta.
#'
#'
#' @export
alert <- function(width = 12, status = "success", icon = NULL, title = NULL, message = NULL, close = FALSE) {
  width = paste0("col-sm-", width)
  status = paste0("alert-", status)
  class_alert = paste("alert", status, "alert-dismissible")

  if (isTRUE(close)) {
    close = shiny::tags$button(
      type="button",
      class="close",
      `data-dismiss`="alert",
      `aria-hidden`="true",
      "×"
    )
  } else {
    close = NULL
  }

  if (!is.null(icon) | !is.null(title)) {
    title = shiny::tags$h4(
      icon,
      title
    )
  }

  shiny::div(
    class=width,
    shiny::div(
      class=class_alert,
      close,
      title,
      message
    )
  )
}




#' @title Callout
#' @name callout
#'
#' @description Uma mensagem.
#'
#' @param width Largura da mensagem.
#' @param status O status da mensagem, podendo utilizar os valores: danger, info, warning, success.
#' @param title Título da mensagem.
#' @param message Mensagem que será exibida, na caixa de mensagem.
#'
#'
#' @export
callout <- function(width = 12, status = "success", title = NULL, message = NULL) {
  width = paste0("col-sm-", width)
  status = paste0("callout-", status)
  class_callout = paste("callout", status)

  if (!is.null(title)) {
    title = shiny::tags$h4(title)
  }

  if (!is.null(message)) {
    message = shiny::tags$p(message)
  }

  shiny::div(
    class=width,
    shiny::div(
      class=class_callout,
      title,
      message
    )
  )
}



#' @title Progress Bar
#' @name progressBar
#'
#' @description Uma barra de progresso.
#'
#' @param width Largura da mensagem.
#' @param value O valor da barra de progresso, esse valor deverá ser entre 0 e 100.
#' @param status O status da barra de progresso, podendo ser utilizado os valores: primary, success, warning, danger.
#' @param animated Caso seja passado o valor TRUE, a barra de progresso ficará animada.
#'
#'
#' @export
progressBar <- function(width = 12, value = 100, status = "success", animated = FALSE) {
  width = paste0("col-sm-", width)
  status = paste0("progress-bar-", status)
  striped = if (isTRUE(animated)) "progress-bar-striped"

  if (is.null(animated) | isFALSE(animated)) {
    progress_bar = "progress"
  } else {
    progress_bar = "progress active"
  }


  shiny::tags$div(
    class=width,
    shiny::tags$div(
      class=progress_bar,

      shiny::tags$div(
        class=paste("progress-bar", status, striped),
        role="progressbar",
        `aria-valuenow`=value,
        `aria-valuemin`=0,
        `aria-valuemax`=100,
        style=paste0("width:", value, "%")
      )
    )
  )

}
