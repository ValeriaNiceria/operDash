headerDash <- function(..., title = "Dashboard Shiny") {

  tags$head(
    tags$title(title),
    tags$link(rel="stylesheet", type="text/css", href="css/bootstrap.min.css"),
    tags$link(rel="stylesheet", type="text/css", href="font-awesome/css/font-awesome.css"),
    tags$link(rel="stylesheet", type="text/css", href="css/animate.css"),
    tags$link(rel="stylesheet", type="text/css", href="css/customer.css"),
    tags$script(HTML('
         $(document).ready(function() {
            $("body").addClass("top-navigation");
        })
    ')),
    list(...)
  )
  
  # lapply(list(...), function(x) tagList(fluidRow(x), br()))
  
}