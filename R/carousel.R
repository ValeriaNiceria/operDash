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
        class = if (i == 1) "item active" else "item",
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

           shiny::tags$a(class="left carousel-control",
                  href=paste0("#", id),
                  `data-slide`="prev",
                  shiny::tags$span(class="glyphicon glyphicon-chevron-left"),
                  shiny::tags$span(class="sr-only", "Previous")
           ),

           shiny::tags$a(class="right carousel-control",
                  href=paste0("#", id),
                  `data-slide`="next",
                  shiny::tags$span(class="glyphicon glyphicon-chevron-right"),
                  shiny::tags$span(class="sr-only", "Next")
           )
        )
}


carouselItem <- function(src = NULL, alt = "imagem", title = NULL, subTitle = NULL, ...) {
  shiny::tagList(
               img(src=src,
                 alt=alt,
                 style="width:100%;",
                 ... ),
               shiny::tags$div(class="carousel-caption",
                        tags$h3(title),
                        tags$p(subTitle)
                        )
             )
}
