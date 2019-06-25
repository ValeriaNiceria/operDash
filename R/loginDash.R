loginDash1 <- function(title = NULL, brand = NULL, style_brand = NULL) {
  header = tags$head(
    tags$link(rel="stylesheet", type="text/css", href="css/bootstrap.min.css"),
    tags$link(rel="stylesheet", type="text/css", href="css/animate.css"),
    tags$link(rel="stylesheet", type="text/css", href="css/customer.css"),
    tags$script(src="js/init.js")
  )
  
  
  body = tags$body(class="gray-bg",
    tags$div(class="middle-box text-center loginscreen animated fadeInDown",
             tags$div(
                tags$div(
                  brand,
                  style = style_brand
                ) 
             )
    )
  )
}