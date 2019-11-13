boxElement <- tabItem(
  tabName = "element_box",
  h2("Box - Exemplo"),
  fluidRow(
    box(
      width = 6,
      title = "Primeiro Box",
      color = "primary",
      message = "Testando campo de informação",
      minimize = TRUE,
      close = TRUE,

      h3("olá")
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

      h3("olá")
    )
  )
</code></pre>
    ')
    )
    # Code - End
  )
)
