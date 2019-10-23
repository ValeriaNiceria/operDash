accordionElement <- 
tabItem(
  tabName = "accordionElement",
  fluidRow(
    column(
      width = 6,
      accordionItem(
        title = "#1 - content",
        content = "Conteúdo teste"
      ),
      accordionItem(
        title = "#2 - content",
        content = tags$h2("Conteúdo teste")
      )
    ),
    column(
      width = 6,
HTML('
<pre class="R">
fluidRow(
  column(
    width = 6,
    accordionItem(
      title = "#1 - content",
      content = "Conteúdo teste"
      ),
    accordionItem(
      title = "#2 - content",
      content = tags$h2("Conteúdo teste")
    )
  )
)
</pre>
')
    )
  )
)