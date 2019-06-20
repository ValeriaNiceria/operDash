carouselBlock <- function(..., id = "myCarousel") {
  
  indicators <- list(...)
  
  generateIndicators <- function(indicators) {
    lapply(1:length(indicators), FUN = function(i) {

      tags$li(
        `data-target` = paste0("#",id),
        `data-slide-to` = i - 1,
        class = if (i == 1) "active" else NULL
      )
    })
  }
  
  generateSlide <- function(indicators) {
    lapply(1:length(indicators), FUN = function(i) {
      
      tags$div(
        class = if (i == 1) "item active" else "item",
        indicators[[i]]
      )
    })
  }
  
  tags$div(id=id, class="carousel slide", `data-ride`="carousel",
           
           tags$ol(class="carousel-indicators",
              generateIndicators(indicators)
           ),
           
           tags$div(class="carousel-inner",
              generateSlide(indicators)
           ),
           
           tags$a(class="left carousel-control", 
                  href=paste0("#", id), 
                  `data-slide`="prev",
                  tags$span(class="glyphicon glyphicon-chevron-left"),
                  tags$span(class="sr-only", "Previous")
           ),
           
           tags$a(class="right carousel-control", 
                  href=paste0("#", id), 
                  `data-slide`="next",
                  tags$span(class="glyphicon glyphicon-chevron-right"),
                  tags$span(class="sr-only", "Next")
           )
        )
}


carouselItem <- function(src = NULL, alt = "imagem", title = NULL, subTitle = NULL, ...) {
             tagList(
               img(src=src, 
                 alt=alt,
                 style="width:100%;",
                 ... ),
               tags$div(class="carousel-caption",
                        tags$h3(title),
                        tags$p(subTitle)
                        )
             )
}