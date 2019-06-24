codeBoxExample <- 
tabItem(tabName = "codeBox",
        fluidRow(
          column(
            width = 12,
            box(
              boxTitle(title = "box()", boxTools(collapseLink())),
              boxContent(
HTML('
<pre class="R">
box(...)
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
      boxTitle(title = "boxTitle()", boxTools(collapseLink())),
      boxContent(
HTML('
<pre class="R">
boxTitle(
  title = "Título box",
  background = "#00a7d0",
  colorText = "#fff",
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
        boxTitle(title = "boxContent()", boxTools(collapseLink())),
        boxContent(
HTML('
<pre class="R">
boxContent(...)
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
        boxTitle(title = "boxTools()", boxTools(collapseLink())),
        boxContent(
HTML('
<pre class="R">
boxTools(...)
</pre>
')
        )
      )
    )
  ),

  fluidRow(
    column(
      width = 8,
      box(
        boxTitle(title = "infoLink()", boxTools(collapseLink())),
        boxContent(
HTML('
<pre class="R">
infoLink(
  icon = icon("info"),
  message = "Mensagem de informação",
  ...
)
</pre>
') 
        )
      )
    ),
    column(
      width = 4,
      box(
        boxTitle(title = "closeLink()", boxTools(collapseLink())),
        boxContent(
HTML('
<pre class="R">
closeLink()
</pre>
')
        )
      )
    )
  ),

  fluidRow(
    column(
      width = 8,
      box(
        boxTitle(title = "label()", boxTools(collapseLink())),
        boxContent(
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
')
          )
          )
        ),
        column(
          width = 4,
          box(
            boxTitle(title = "collapseLink()", boxTools(collapseLink())),
            boxContent(
HTML('
<pre class="R">
collapseLink()
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
        boxTitle(title = "Exemplo", boxTools(collapseLink())),
        boxContent(
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
      )
    )
  )

)