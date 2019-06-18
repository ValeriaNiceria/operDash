carouselDash <- function(title = NULL, ...) {
  tags$div(class="row justify-content-md-center",
           tags$div(class="col-lg-10",
                    tags$div(class="ibox",
                             tags$h4(class="text-center m", title),
                             tags$div(class="slick_demo_1",
                                      ...
                                      )
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