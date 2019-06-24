codeElementsExample <-
tabItem(tabName = "codeElements",
        
fluidRow(
  column(
    width = 6,
    box(
      boxTitle(title = "appButton()", boxTools(collapseLink())),
      boxContent(
        tags$small(strong("status =>"), span(class="bg-primary", "primary"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
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
')
      )
    )
  ),
  column(
    width = 6,
    box(
      boxTitle(title = "appCircleButton()", boxTools(collapseLink())),
      boxContent(
        tags$small(strong("status =>"), span(class="bg-primary", "primary"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
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
')
      )
    )
  )
),

fluidRow(
  column(
    width = 4,
    box(
      boxTitle(title = "jumbotron()", boxTools(collapseLink())),
      boxContent(
HTML('
<pre class="R">
jumbotron(...)
</pre>
')
      )
    )
  ),
  column(
    width = 8,
    box(
      boxTitle(title = "alert()", boxTools(collapseLink())),
      boxContent(
        tags$small(strong("status =>"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
HTML('
<pre class="R">
alert(
  message = "mensagem de alerta",
  status = "success",
  ...
)
</pre>
')
        )
      )
    )
),
    
fluidRow(
  column(
    width = 12,
    box(
      boxTitle(title = "progressBar()", boxTools(collapseLink())),
      boxContent(
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
    )
  )
),

fluidRow(
  column(
    width = 6,
    box(
      boxTitle(title = "carouselBlock()", boxTools(collapseLink())),
      boxContent(
HTML('
<pre class="R">
carouselBlock(id = "myCarousel", ...)
</pre>
')
      )
    )
  ),
  column(
    width = 6,
    box(
      boxTitle(title = "carouselItem()", boxTools(collapseLink())),
      boxContent(
HTML('
<pre class="R">
carouselItem(
  src="img/teste.png",
  alt = "Imagem teste",
  title = "Título imagem carousel",
  subTitle = "Subtítulo"
)
</pre>
')
      )
    )
  )
)
)

# fluidRow(
#   column(
#     width = 12,
#     box(
#       boxTitle(title = "Exemplo", boxTools(collapseLink())),
#       boxContent(
# 
#       )
#     )
#   )
# )