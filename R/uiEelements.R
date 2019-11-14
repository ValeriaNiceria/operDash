#' @title Carousel
#' @name Carousel
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
#' @name CarouselItem
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
