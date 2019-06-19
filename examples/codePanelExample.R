codePanelExample <-
tabItem(tabName = "codePanel",
    tags$h3(class="font-bold", "panel()"),
    tags$small("status => default - primary - success - info - warning - danger"),
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