#' @title Carousel Block
#' @name carouselBlock
#'
#' @description descricao
#'
#'
#' @param id idetificação para o bloco
#' @param ... itens que serão adicionados \code{carouselItem}
#'
#'
#' @seealso \code{\link{carouselItem}}
#'
#'
#' @export


carouselBlock <- function(..., id = "myCarousel") {

  indicators <- list(...)

  generateIndicators <- function(indicators) {
    lapply(1:length(indicators), FUN = function(i) {

      shiny::tags$li(
        `data-target` = paste0("#",id),
        `data-slide-to` = i - 1,
        class = if (i == 1) "active" else NULL
      )
    })
  }

  generateSlide <- function(indicators) {
    lapply(1:length(indicators), FUN = function(i) {

      shiny::tags$div(
        class = if (i == 1) "carousel-item active" else "carousel-item",
        indicators[[i]]
      )
    })
  }

  shiny::tags$div(id=id, class="carousel slide", `data-ride`="carousel",

           shiny::tags$ol(class="carousel-indicators",
              generateIndicators(indicators)
           ),

           shiny::tags$div(class="carousel-inner",
              generateSlide(indicators)
           ),

           shiny::tags$a(class="carousel-control-prev",
                  href=paste0("#", id),
                  role="button",
                  `data-slide`="prev",
                  shiny::tags$span(class="carousel-control-prev-icon", `aria-hidden`="true"),
                  shiny::tags$span(class="sr-only", "Previous")
           ),

           shiny::tags$a(class="carousel-control-next",
                  href=paste0("#", id),
                  role="button",
                  `data-slide`="next",
                  shiny::tags$span(class="carousel-control-next-icon", `aria-hidden`="true"),
                  shiny::tags$span(class="sr-only", "Next")
           )
        )
}



#' @title Carousel Item
#' @name carouselItem
#'
#' @description descricao
#'
#'
#' @param imgSrc caminho da imagem
#' @param title título para o item do carousel
#' @param subTitle subtitulo para o item do carousel
#'
#'
#' @export


carouselItem <- function(imgSrc = NULL, title = NULL, subTitle = NULL) {
  shiny::tagList(
    shiny::tags$img(
      class="d-block w-100",
      src=imgSrc
    ),
    shiny::tags$div(
      class="carousel-caption d-none d-md-block",
      shiny::tags$h3(title),
      shiny::tags$p(subTitle)
    )
  )
}
