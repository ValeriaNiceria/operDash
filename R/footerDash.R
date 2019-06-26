#' @title Dashboard Footer
#' @name footerDash
#'
#'
#' @param textLeft A text footer by left bar
#' @param textRight A text footer by right bar#'
#'
#'
#'
#' @export



footerDash <- function(textLeft = "textLeft", textRight = "textRight") {
  tags$div(class="footer",
           tags$div(class="float-right", textRight),
           tags$div(textLeft)
           )
}
