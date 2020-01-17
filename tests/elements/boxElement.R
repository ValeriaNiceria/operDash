boxElement <- tabItem(
  tab_name = "element_box",
  title = "Box - Exemplo",

  fluidRow(
    box(
      width = 6,
      title = "Primeiro Box",
      color = "primary",
      message = "Testando campo de informação",
      minimize = TRUE,
      close = TRUE,

      h3("olá"),

      footer = h5("Testando footer")
    ),

    # Code - Start
    column(
      width = 6,
      HTML('
<pre><code class="R">
  fluidRow(
    box(
      width = 6,
      title = "Primeiro Box",
      color = "primary",
      message = "Testando campo de informação",
      minimize = TRUE,
      close = TRUE,

      h3("olá"),

      footer = h5("Testando footer")
    )
  )
</code></pre>
    ')
    )
    # Code - End
  ),

  fluidRow(
    box(
      width = 6,
      icon_box = icon("chart-line"),
      title = "Exemplo Plot",
      message = "Exemplo de plot usando o pacote highcharter",

      fluidRow(
        column(
          width = 12,
          numericInput(inputId ="n", label = "Número de observações", value = 100)
        ),
        column(width = 12, plotOutput("plot"))
      )
    ),

    # Code - Start
    column(
      width = 6,
      HTML('
<pre><code class="R">
  fluidRow(
    box(
      width = 6,
      icon_box = icon("chart-line"),
      title = "Exemplo Plot",
      message = "Exemplo de plot usando o pacote highcharter",

      fluidRow(
        column(
          width = 12,
          numericInput(
            inputId ="n",
            label = "Número de observações",
            value = 100
          )
        ),
        column(
          width = 12,
          highchartOutput("plot")
        )
      )
    )
  )
</code></pre>
    ')
    )
    # Code - End
  )
)
