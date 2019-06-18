carouselDash <- function(title = NULL, ...) {
  tags$div(id="carouselImageControls", class="carousel slide", `data-ride`="carousel",
           tags$div(class="carousel-inner",
                    
                    ...,
                    
                    tags$a(class="carousel-control-prev", 
                           href="#carouselImageControls", 
                           role="button", 
                           `data-slide`="prev",
                           tags$span(class="carousel-control-prev-icon", 
                                     `aria-hidden`="true"),
                           tags$span(class="sr-only", 
                                     "Previous")
                           ),
                    
                    tags$a(class="carousel-control-prev", 
                           href="#carouselImageControls", 
                           role="button", 
                           `data-slide`="next",
                           tags$span(class="carousel-control-next-icon", 
                                     `aria-hidden`="true"),
                           tags$span(class="sr-only", 
                                     "Next")
                    )
                    )
           )
}


carouselItem <- function(title = NULL, body = NULL, ...) {
  tags$div(
    tags$div(class="ibox-content", style="max-height: 182px;",
             tags$h2(title),
             tags$p(body),
             ... 
             )
  )
}