carouselDash <- function(...) {
  tags$div(id="carouselImageControls", class="carousel slide", `data-ride`="carousel",
           tags$div(class="carousel-inner",
                    
                    ...
                    
                    ),
           
           tags$a(class="carousel-control-prev", 
                  href="#carouselImageControls", 
                  role="button", 
                  `data-slide`="prev",
                  tags$span(class="carousel-control-prev-icon", 
                            `aria-hidden`="true"),
                  tags$span(class="sr-only", 
                            "Previous")
           ),
           
           tags$a(class="carousel-control-next", 
                  href="#carouselImageControls", 
                  role="button", 
                  `data-slide`="next",
                  tags$span(class="carousel-control-next-icon", 
                            `aria-hidden`="true"),
                  tags$span(class="sr-only", 
                            "Next")
           )
        )
}


carouselItem <- function(img_src = NULL, active = FALSE, alt = NULL, ...) {
  classItemCarousel = ifelse(active, "carousel-item active", "carousel-item") 
  
    tags$div(class=classItemCarousel,
             img(class="d-block w-100", 
                 src=img_src, 
                 alt=alt),
             
             ... 
             
             )
}