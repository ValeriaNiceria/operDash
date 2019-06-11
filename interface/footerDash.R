footerDash <- function(textLeft = "Copyright Example", textRight = "Text Right") {
  tags$div(class="footer",
           tags$div(class="float-right", textRight),
           tags$div(textLeft)
           )
}