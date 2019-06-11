headerDash <- function(title_tag = "Dashboard Shiny") {
  HTML(sprintf('
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>%s</title>
  ', title_tag))
}