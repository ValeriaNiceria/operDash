codePanelExample <-
tabItem(tabName = "codePanel",
        fluidRow(
          column(
            width = 6,
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
          ),
          column(
            width = 6,
            box(
              boxTitle(title = "accordionItem()", boxTools(collapseLink())),
              boxContent(
HTML('
<pre class="R">
accordionItem(
  width = 12, 
  title = "Título", 
  content = "Conteúdo teste", 
  ...
)
</pre>
')
              )
            )
          )
        )
    
)