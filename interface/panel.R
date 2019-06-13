panel <- function(title = "title", content = "content", type = "default", ...) {
  # type = default - primary - success - info - warning - danger
  classPanel = paste0("panel panel-", type)
  tags$div(class=classPanel,
           tags$div(class="panel-heading", title),
           tags$div(class="panel-body", content),
           ...
           )
}