headDash <- function(...) {
  tags$head(
    tags$link(rel="stylesheet", type="text/css", href="css/bootstrap.min.css"),
    # tags$link(rel="stylesheet", type="text/css", href="font-awesome/css/font-awesome.css"),
    tags$link(rel="stylesheet", type="text/css", href="css/animate.css"),
    tags$link(rel="stylesheet", type="text/css", href="css/customer.css"),
    tags$script(src="js/init.js"),
    ...
  )
}