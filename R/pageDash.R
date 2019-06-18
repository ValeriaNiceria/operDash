pageDash <- function(title = "Dashboard Shiny",
                     header = NULL,
                     navbar = NULL,
                     sidebar = NULL,
                     body = NULL,
                     footer = NULL,
                     footerScripts = NULL,
                     ...) {

  if (!is.null(navbar)) {
    content = tags$div(id="wrapper",
                       tags$div(id="page-wrapper", class="gray-bg",
                                header,
                                navbar,
                                body,
                                footer,
                                footerScripts,
                                
                                ...
                                
                       )
    )
  } else {
    content = tags$div(id="wrapper",
                       header,
                       sidebar,
                       body,
                       footer,
                       footerScripts,
                       
                       ...
    )
  }
  

  bootstrapPage(content, title = title)
}



pageSidebarDash <- function(title = "Dashboard Shiny",
                           header = NULL,
                           sidebar = NULL,
                           body = NULL,
                           footer = NULL,
                           footerScripts = NULL,
                           ...) {
  
  
  
}