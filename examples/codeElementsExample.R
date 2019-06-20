codeElementsExample <-
tabItem(tabName = "codeElements",
    tags$h3(class="font-bold", "appButton()"),
HTML('
<pre class="R">
appButton(
  id = "botao",
  label = "botão",
  icon = icon("check"),
  status = "danger",
  size_lg = TRUE,
  ...
)
</pre>
'),

    tags$h3(class="font-bold", "appCircleButton()"),
HTML('
<pre class="R">
appCircleButton(
    id = "botao",
    icon = icon("check"),
    status = "danger",
    size_lg = TRUE,
    ...
)
</pre>
'),

    tags$h3(class="font-bold", "jumbotron()"),
HTML('
<pre class="R">
jumbotron(...)
</pre>
'),

    tags$h3(class="font-bold", "alert()"),
    tags$small(strong("status =>"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
HTML('
<pre class="R">
alert(
  message = "mensagem de alerta",
  status = "success",
  ...
)
</pre>
'),

    tags$h3(class="font-bold", "progressBar()"),
    tags$small(strong("status =>"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
HTML('
<pre class="R">
progressBar(
  status = "danger",
  animated = TRUE,
  min = "0",
  value = "45",
  max = "100"
  ...
)
</pre>
')
)