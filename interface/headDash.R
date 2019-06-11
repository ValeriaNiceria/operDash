headerDash <- function(..., title_tag = "Dashboard Shiny") {
  # HTML(sprintf(''))
  
  tags$html(
    tags$head(
      tags$title(title_tag),
      tags$link(rel = "stylesheet", type = "text/css", href = "css/bootstrap.min.css"),
      tags$link(rel = "stylesheet", type = "text/css", href = "font-awesome/css/font-awesome.css"),
      tags$link(rel = "stylesheet", type = "text/css", href = "css/animate.css"),
      tags$link(rel = "stylesheet", type = "text/css", href = "css/style.css"),
      list(...)
    )
  )
  
  # lapply(list(...), function(x) tagList(fluidRow(x), br()))
  
}