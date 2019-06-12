headerDash <- function(..., title = "Dashboard Shiny") {

  tags$head(
    HTML(sprintf('<meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">')),
    tags$title(title),
    tags$link(rel="stylesheet", type="text/css", href="css/bootstrap.min.css"),
    tags$link(rel="stylesheet", type="text/css", href="font-awesome/css/font-awesome.css"),
    tags$link(rel="stylesheet", type="text/css", href="css/animate.css"),
    tags$link(rel="stylesheet", type="text/css", href="css/style.css"),
    list(...)
  )
  
  # lapply(list(...), function(x) tagList(fluidRow(x), br()))
  
}