pageDash <- function(title = "Dashboard Shiny",
                     header = NULL,
                     navbar = NULL,
                     body = NULL,
                     footer = NULL,
                     footerScripts = NULL,
                     ...) {
  
  
content <-  tags$div(id="wrapper",
             tags$div(id="page-wrapper", class="gray-bg",
                      header,
                      navbar,
                      body,
                      footer,
                      footerScripts,
                      
                      ...
                      
             )
  )


bootstrapPage(content, title = title, theme = "css/bootstrap.min.css")
}