panel <- function(title = NULL, body = NULL, footer = NULL, status = "default", ...) {
  # type = default - primary - success - info - warning - danger
  classPanel = paste0("panel panel-", status)
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


accordionItem <- function(width = 12, title = NULL, content = NULL, ...) {
  width = paste0("col-lg-", width)
  tags$div(class=width,
           tags$button(class="accordion font-bold", title),
           tags$div(class="panel-accordion", content),
           ...
  )
   
}