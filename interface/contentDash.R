contentDash <- function(...) {
  tags$div(class="wrapper wrapper-content",
           tags$div(class="container",
                    div(class = "tab-content", ...)
                    )
           )
}