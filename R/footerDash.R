footerDash <- function(textLeft = "textLeft", textRight = "textRight") {
  tags$div(class="footer",
           tags$div(class="float-right", textRight),
           tags$div(textLeft)
           )
}