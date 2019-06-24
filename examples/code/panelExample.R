codePanelExample <-
tabItem(tabName = "codePanel",
        fluidRow(
          column(
            width = 12,
            box(
              boxTitle(title = "panel()", boxTools(collapseLink())),
              boxContent(
                tags$small(strong("status =>"), span(class="bg-muted", "default"), span(class="bg-primary", "primary"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
HTML('
<pre class="R">
panel(
  title = "Título",
  body = "Corpo",
  footer = "Rodapé",
  status = "danger",
  ...
)
</pre>
')
              )
            )
          )
        )
    
)