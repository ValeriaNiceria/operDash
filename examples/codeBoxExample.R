codeBoxExample <- 
tabItem(tabName = "codeBox",
    tags$h3(class="font-bold", "box()"),
HTML('
<pre class="R">
box(...)
</pre>
'),

    tags$h3(class="font-bold", "boxTitle()"),
HTML('
<pre class="R">
boxTitle(
  title = "Título box",
  background = "#00a7d0",
  colorText = "#fff",
  ...
)
</pre>
'),

    tags$h3(class="font-bold", "boxContent()"),
HTML('
<pre class="R">
boxContent(...)
</pre>
'),

    tags$h3(class="font-bold", "boxTools()"),
HTML('
<pre class="R">
boxTools(...)
</pre>
'),

tags$h3(class="font-bold", "infoLink()"),
HTML('
<pre class="R">
infoLink(
  icon = icon("info"),
  message = "Mensagem de informação"
)
</pre>
'),

    tags$h3(class="font-bold", "closeLink()"),
HTML('
<pre class="R">
closeLink()
</pre>
'),

    tags$h3(class="font-bold", "collapseLink()"),
HTML('
<pre class="R">
collapseLink()
</pre>
'),

    tags$h3(class="font-bold", "label()"),
    tags$small(strong("status =>"), span(class="bg-muted", "default"), span(class="bg-primary", "primary"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
    tags$br(),
    tags$small(strong("float => "), "left, right"),
HTML('
<pre class="R">
label(
  label = "trabalhando",
  status = "success",
  float = "right",
  ...
)
</pre>
'),

  tags$h2(class="font-bold", "Exemplo"),
HTML('
<pre class="R">
box(
  boxTitle(
    color = "#00a7d0",
    boxTools(closeLink(), 
            collapseLink(), 
            infoLink(icon = icon("info"), message = "Mensagem de informação"), 
            label(label = "testando"))
  ),
  boxContent(
     numericInput(inputId = "n", 
       label = "Number of obs", 
       value = 100
     )
  )
)
</pre>
')
)