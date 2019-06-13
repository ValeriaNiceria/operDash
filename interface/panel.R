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