sidebarDash <- function(img_src = NULL, logo_element = "oper", message_welcome = NULL, ...) {
  tagList(
    tags$nav(class="navbar-default navbar-static-side", role="navigation",
             tags$div(class="sidebar-collapse",
                      tags$ul(class="nav metismenu",
                              id="side-menu",
                              tags$li(class="nav-header",
                                      tags$div(class="dropdown profile-element",
                                               if (!is.null(img)) tags$img(alt="image", class="rounded-circle", src = img_src, style="width:48px")
                                      ),
                                      tags$div(class="logo-element", logo_element)
                              ),
                              ...
                      )
             )
    ),
    
    tags$div(id="page-wrapper", class="gray-bg",
             tags$div(class="row border-bottom",
                      tags$nav(class="navbar navbar-static-top", 
                               role="navigation", 
                               style="margin-bottom: 0",
                               tags$div(class="navbar-header",
                                        tags$a(class="navbar-minimalize minimalize-styl-2 btn btn-primary", href="#", icon("bars"))
                               )
                               # tags$ul(class="nav navbar-top-links navbar-right",
                               #         tags$li(tags$span(class="m-r-sm text-muted welcome-message", message_welcome)
                               #         )
                               # )
                      )
             )
    )
  )
  
}