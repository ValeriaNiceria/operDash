panel <- function(title = NULL, body = NULL, footer = NULL, type = "default", ...) {
  # type = default - primary - success - info - warning - danger
  classPanel = paste0("panel panel-", type)
  title = if (!is.null(title))  tags$div(class="panel-heading", title)
  body = if (!is.null(body))  tags$div(class="panel-body", body)
  footer = if (!is.null(footer))  tags$div(class="panel-footer", footer)
  
  tags$div(class=classPanel,
          title,
          body,
          footer,
           ...
           )
}


panelCollapse <- function() {
  
}


collapsePanel <- function(...) {
  tags$div(class="panel-body",
           tags$div(class="panel-group", id="accordion", 
                    
                    ...
                    
                    )
           )
}


collapsePanelItem <- function(..., title = NULL, id = NULL, content = NULL) {
  href = paste0("#", id)
  tags$div(class="panel panel-default",
           tags$div(class="panel-heading",
                    tags$h5(class="panel-title",
                            tags$a(`data-toggle`="collapse", 
                                   `data-parent`="#accordion",
                                   href = href,
                                   class="collapsed",
                                   `aria-expanded`="false",
                                   title)
                            )
                    ),
           tags$div(id = id,
                    class="panel-collapse in collapse",
                    tags$div(class="panel-body",
                             content)
                    ),
           ...
           
           )
}