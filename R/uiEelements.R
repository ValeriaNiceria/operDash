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
