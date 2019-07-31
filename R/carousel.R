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


carouselItem <- function(imgSrc = NULL, alt = "", title = NULL, subTitle = NULL) {
  shiny::tagList(
    shiny::tags$img(
      class="d-block w-100",
      src=imgSrc,
      alt=alt
    ),
    shiny::tags$div(
      class="carousel-caption d-none d-md-block",
      shiny::tags$h3(title),
      shiny::tags$p(subTitle)
    )
  )
}
